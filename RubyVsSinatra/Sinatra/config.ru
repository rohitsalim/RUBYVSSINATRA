require File.dirname(__FILE__) + '/web.rb'
require 'bundler'

# app map
run Rack::URLMap.new({
    "/"         =>	App
})