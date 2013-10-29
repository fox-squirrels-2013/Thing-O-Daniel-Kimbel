require 'sinatra'
require 'active_record'
require_relative './app/models/spaceship'

# ActiveRecord::Base.establish_connection(adapter: 'postgresql')

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/spaceship_db')

get '/' do 
  erb :index
end

get '/factory' do
  erb :factory
end

post '/factory' do
  Spaceship.create(name: params[:name], engines: 1, lasers: 1, shields: 1)
  erb :new_ship_confirmed
end

get '/hangar' do
  erb :hangar
end

get '/workshop' do
  erb :workshop
end

post '/workshop' do
  @curr_ship = Spaceship.find(params[:id])
  @curr_ship.name = params[:name]
  @curr_ship.engines = params[:engines]
  @curr_ship.shields = params[:shields]
  @curr_ship.lasers = params[:lasers]
  @curr_ship.save
  erb :work_confirmed
end

get '/scrapyard' do
  erb :scrapyard
end

post '/scrapyard' do
  @curr_ship = Spaceship.find(params[:id])
  @name = @curr_ship.name
  @curr_ship.destroy
  erb :confirm_scrapping
end
