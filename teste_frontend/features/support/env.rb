#requires das gems usadas no projeto
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

#setando o env para o projeto intanciando que sera necesario
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

#este bloco mostra que o ambiente pode ser mudado utilizando arquivos .yml na pasta data
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

#configuracao do chromedriver/selenium para o projeto
Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome

Capybara.default_max_wait_time = 15

Capybara.page.driver.browser.manage.window.maximize

Capybara.configure do |config|
    config.app_host = CONFIG['url_home']
end