require 'cucumber'
require 'rspec'
require 'page-object'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/cucumber'
require 'data_magic'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome

Capybara.default_max_wait_time = 15

Capybara.page.driver.browser.manage.window.maximize

Capybara.configure do |config|
    config.app_host = CONFIG['url_home']
end