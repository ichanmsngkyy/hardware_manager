require 'sinatra'
require 'sinatra/json'
require_relative '../models/order'

# Get all orders
get '/orders' do
  orders = Order.all
  json orders
end

# Get a single order
get '/orders/:id' do
  order = Order.find(params[:id])
  halt 404, json({ error: 'Order not found' }) unless order
  json order
end

# Create a new order
post '/orders' do
  begin
    data = JSON.parse(request.body.read)
    puts "[POST /orders] Received data: #{data.inspect}"
    
    # Add validation here
    id = Order.create(data)
    puts "[POST /orders] Order created with ID: #{id}"
    
    # Log the order creation activity
    activity_data = {
      'partName' => data['partName'],
      'categoryId' => data['categoryId'],
      'actionType' => 'create_order',
      'details' => "Created order ##{data['orderId']} for #{data['quantity']} units of #{data['partName']}",
      'orderId' => data['orderId']
    }
    
    # Create activity log
    require_relative '../models/activity_log'
    ActivityLog.create(activity_data)
    
    status 201
    json({ id: id })
  rescue => e
    puts "[POST /orders] Error creating order: #{e.message}"
    puts "[POST /orders] Backtrace: #{e.backtrace.join("\n")}"
    status 500
    json({ error: e.message })
  end
end

# Update an order
put '/orders/:id' do
  data = JSON.parse(request.body.read)
  
  # Get order details before update for logging
  order = Order.find(params[:id])
  halt 404, json({ error: 'Order not found' }) unless order
  
  # Update the order
  Order.update(params[:id], data)
  
  # Log the order update activity
  activity_data = {
    'partName' => data['partName'] || order['partName'],
    'categoryId' => data['categoryId'] || order['categoryId'],
    'actionType' => 'update_order',
    'details' => "Updated order ##{params[:id]} - #{data['partName']} quantity: #{data['quantity']}",
    'orderId' => params[:id]
  }
  
  # Create activity log
  require_relative '../models/activity_log'
  ActivityLog.create(activity_data)
  
  status 204
end

# Delete an order
delete '/orders/:id' do
  # Get order details before deletion for logging
  order = Order.find(params[:id])
  halt 404, json({ error: 'Order not found' }) unless order
  
  # Delete the order
  Order.delete(params[:id])
  
  # Log the deletion activity
  activity_data = {
    'partName' => order['part_name'] || 'Unknown Part',
    'categoryId' => order['category_id'] || 'N/A',
    'actionType' => 'delete_order',
    'details' => "Deleted order ##{params[:id]} for #{order['quantity']} units of #{order['part_name']}",
    'orderId' => params[:id]
  }
  
  # Create activity log
  require_relative '../models/activity_log'
  ActivityLog.create(activity_data)
  
  status 204
end 