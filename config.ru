require 'rubygems'
require 'bundler/setup'

require 'grape'

require File.absolute_path("app.rb")

require File.absolute_path('rails_shim.rb')
require 'scout_apm'

run Wine::API
