#require 'capybara/cucumber'
#require 'selenium-webdriver'


#require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    
    config.default_driver= :selenium_chrome
    config.app_host= 'http://automationpractice.com/index.php' 
    config.default_max_wait_time = 30 
end
