require 'bundler/setup'
require 'sinatra'
require './app'

# Configure for production
configure :production do
  set :environment, :production
  set :port, ENV['PORT'] || 4567
  set :bind, '0.0.0.0'
end

run Sinatra::Application 