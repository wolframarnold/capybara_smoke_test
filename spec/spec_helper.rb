require 'rubygems'
require 'rspec'
require 'capybara'
require 'capybara/dsl'

local_dir = File.expand_path(File.dirname(__FILE__))

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.

RSpec.configure do |config|
  config.mock_with :rspec
  config.include(Capybara)
end

Capybara.configure do |config|
  config.asset_root = File.join(local_dir,'..','..','papercheck','public')
  config.save_and_open_page_path = File.join(local_dir,'..','tmp')
  config.run_server = false
#  config.current_driver = :celerity
  config.current_driver = :selenium  # Built-in default driver cannot make requests to external sites
  config.default_host = "http://localhost:3000"
  config.app_host = "http://localhost:3000"
end
