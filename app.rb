require 'sinatra'
require 'active_record'
require_relative './app/models/spaceship'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do 
  erb :index
end

get '/make/:name' do
  @name = params[:name]
  erb :make
end

get '/read' do
  erb :read
end
