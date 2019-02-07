require 'bundler'
Bundler.require

configure :development do
	set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}
	SINATRA_ACTIVESUPPORT_WARNING=false
end
require_relative '../app/controllers/application_controller.rb'
require_all 'app/models'
