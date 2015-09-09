require 'rubygems'
require 'bundler'
require 'sinatra/reloader'
Bundler.require

# Controllers
require './models/whisky'
require './app'

run Dramr