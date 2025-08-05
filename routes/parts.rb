require 'sinatra'
require 'sinatra/json'
require_relative '../models/part'

# Get all parts
get '/parts' do
  parts = Part.all
  json parts
end

# Get a single part
get '/parts/:id' do
  part = Part.find(params[:id])
  halt 404, json({ error: 'Part not found' }) unless part
  json part
end

# Create a new part
post '/parts' do
  data = JSON.parse(request.body.read)
  # Add validation here
  id = Part.create(data)
  
  # Log the part creation activity
  activity_data = {
    'partName' => data['name'],
    'categoryId' => data['categoryId'],
    'actionType' => 'create_part',
    'details' => "Created new part: #{data['name']} with quantity #{data['quantity']}",
    'orderId' => nil
  }
  
  # Create activity log
  require_relative '../models/activity_log'
  ActivityLog.create(activity_data)
  
  status 201
  json({ id: id })
end

# Update a part
put '/parts/:id' do
  data = JSON.parse(request.body.read)
  
  # Get part details before update for logging
  part = Part.find_by_category_id(params[:id])
  halt 404, json({ error: 'Part not found' }) unless part
  
  # Update the part
  Part.update_by_category_id(params[:id], data)
  
  # Log the part update activity
  activity_data = {
    'partName' => data['name'] || part['name'],
    'categoryId' => data['categoryId'] || part['categoryId'],
    'actionType' => 'update_part',
    'details' => "Updated part: #{data['name'] || part['name']} - new quantity: #{data['quantity']}",
    'orderId' => nil
  }
  
  # Create activity log
  require_relative '../models/activity_log'
  ActivityLog.create(activity_data)
  
  status 204
end

# Delete a part
delete '/parts/:id' do
  # Get part details before deletion for logging
  part = Part.find_by_category_id(params[:id])
  halt 404, json({ error: 'Part not found' }) unless part
  
  # Delete the part
  Part.delete(params[:id])
  
  # Log the part deletion activity
  activity_data = {
    'partName' => part['name'],
    'categoryId' => part['categoryId'],
    'actionType' => 'delete_part',
    'details' => "Deleted part: #{part['name']} (Category: #{part['categoryId']})",
    'orderId' => nil
  }
  
  # Create activity log
  require_relative '../models/activity_log'
  ActivityLog.create(activity_data)
  
  status 204
end 