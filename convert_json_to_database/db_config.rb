require 'pg'
require 'active_record'


options = {
  adapter: 'postgresql',
  database: 'athletes'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)