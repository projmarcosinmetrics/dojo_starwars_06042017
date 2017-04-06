require 'rspec'
require 'site_prism'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'faker'
require 'capybara/cucumber'
include Capybara::DSL

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
end
