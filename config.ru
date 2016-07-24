require 'rubygems'
require 'bundler'
Bundler.require

#LOAD MODEL
require './models/user'

#LOAD APP
require './app'

use Rack::MethodOverride
run RedmartUsersApp
