require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require "rubygems"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    config.app_host = "http://automationpractice.com"
    config.default_max_wait_time = 10
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end