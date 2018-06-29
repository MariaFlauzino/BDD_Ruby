require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://mark7.herokuapp.com'
end

# até 5 segundos para encontrar um elemento
Capybara.default_max_wait_time = 5