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
    
    # Activity logging is handled by the frontend
    # Removed duplicate activity logging here
    
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
  
  # Get order details before update
  order = Order.find(params[:id])
  halt 404, json({ error: 'Order not found' }) unless order
  
  # Update the order
  Order.update(params[:id], data)
  
  # Activity logging is handled by the frontend
  # Removed duplicate activity logging here
  
  status 204
end

# Delete an order
delete '/orders/:id' do
  # Get order details before deletion
  order = Order.find(params[:id])
  halt 404, json({ error: 'Order not found' }) unless order
  
  # Delete the order
  Order.delete(params[:id])
  
  # Activity logging is handled by the frontend
  # Removed duplicate activity logging here
  
  status 204
end 