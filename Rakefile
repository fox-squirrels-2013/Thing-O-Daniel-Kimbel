require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb spaceship_db`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb spaceship_db`
  end
end
