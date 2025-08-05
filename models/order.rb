require 'open3'

class Order
  MYSQL_CMD = 'C:\xampp\mysql\bin\mysql.exe'
  
  def self.all
    query_sql('SELECT * FROM orders')
  end

  def self.find(id)
    results = query_sql("SELECT * FROM orders WHERE id = #{id}")
    results.first
  end

  def self.create(attrs)
    escaped_orderId = attrs['orderId'].gsub("'", "\\'")
    escaped_categoryId = attrs['categoryId'].gsub("'", "\\'")
    escaped_partName = attrs['partName'].gsub("'", "\\'")
    escaped_date = attrs['date'].gsub("'", "\\'")
    escaped_status = attrs['status'].gsub("'", "\\'")
    order_quantity = attrs['quantity'].to_i
    
    # First, check if the part has enough stock
    check_stock_sql = "SELECT quantity FROM parts WHERE categoryId = '#{escaped_categoryId}'"
    puts "[Order.create] SQL for stock check: #{check_stock_sql}"
    stock_check_stdout, stock_check_stderr, stock_check_status = execute_sql(check_stock_sql)
    puts "[Order.create] Stock check stdout: #{stock_check_stdout} stderr: #{stock_check_stderr} status: #{stock_check_status.exitstatus}"
    
    if stock_check_status != 0
      raise "Failed to check stock for part #{escaped_categoryId}"
    end
    
    # Parse the current stock
    lines = stock_check_stdout.strip.split("\n")
    if lines.length < 2
      raise "No stock data found for part #{escaped_categoryId}"
    end
    
    current_stock = lines[1].to_i
    if current_stock < order_quantity
      raise "Insufficient stock: requested #{order_quantity}, available #{current_stock}"
    end
    
    # Insert the order first
    sql = "INSERT INTO orders (orderId, categoryId, partName, date, quantity, status) VALUES ('#{escaped_orderId}', '#{escaped_categoryId}', '#{escaped_partName}', '#{escaped_date}', #{order_quantity}, '#{escaped_status}')"
    puts "[Order.create] SQL for order: #{sql}"
    stdout, stderr, status = execute_sql(sql)
    puts "[Order.create] Order insert stdout: #{stdout} stderr: #{stderr} status: #{status.exitstatus}"
    
    if status != 0
      raise "Failed to insert order: #{stderr}"
    end

    # Only deduct stock if order insertion was successful
    update_stock_sql = "UPDATE parts SET quantity = quantity - #{order_quantity} WHERE categoryId = '#{escaped_categoryId}'"
    puts "[Order.create] SQL for stock deduction: #{update_stock_sql}"
    stock_stdout, stock_stderr, stock_status = execute_sql(update_stock_sql)
    puts "[Order.create] Stock deduction stdout: #{stock_stdout} stderr: #{stock_stderr} status: #{stock_status.exitstatus}"
    
    if stock_status != 0
      # If stock deduction fails, we should rollback the order insertion
      # For now, just log the error
      puts "[Order.create] WARNING: Stock deduction failed but order was created"
    end
    
    # Get the last inserted ID
    results = query_sql('SELECT LAST_INSERT_ID() as id')
    if results.empty?
      raise "Failed to get inserted order ID"
    end
    results.first['id'].to_i
  end

  def self.update(id, attrs)
    set_clause = attrs.map { |k, v| "#{k} = '#{v.to_s.gsub("'", "\\'")}'" }.join(', ')
    sql = "UPDATE orders SET #{set_clause} WHERE id = #{id}"
    execute_sql(sql)
  end

  def self.delete(id)
    # Get order details before deletion to restore stock
    order = find(id)
    if order
      order_quantity = order['quantity'].to_i
      category_id = order['categoryId']
      
      # Restore the stock when deleting the order
      restore_stock_sql = "UPDATE parts SET quantity = quantity + #{order_quantity} WHERE categoryId = '#{category_id}'"
      puts "[Order.delete] SQL for stock restoration: #{restore_stock_sql}"
      stock_stdout, stock_stderr, stock_status = execute_sql(restore_stock_sql)
      puts "[Order.delete] Stock restoration stdout: #{stock_stdout} stderr: #{stock_stderr} status: #{stock_status.exitstatus}"
    end
    
    # Delete the order
    sql = "DELETE FROM orders WHERE id = #{id}"
    puts "[Order.delete] SQL for order deletion: #{sql}"
    stdout, stderr, status = execute_sql(sql)
    puts "[Order.delete] Order deletion stdout: #{stdout} stderr: #{stderr} status: #{status.exitstatus}"
  end

  private

  def self.execute_sql(sql)
    cmd = "#{MYSQL_CMD} -uroot inventory_db -e \"#{sql}\""
    stdout, stderr, status = Open3.capture3(cmd)
    return stdout, stderr, status
  end

  def self.query_sql(sql)
    stdout, stderr, status = execute_sql(sql)
    return [] if status != 0
    
    lines = stdout.strip.split("\n")
    return [] if lines.empty?
    
    headers = lines[0].split("\t")
    results = []
    
    lines[1..-1].each do |line|
      values = line.split("\t")
      row = {}
      headers.each_with_index do |header, i|
        row[header] = values[i]
      end
      results << row
    end
    
    results
  end
end 