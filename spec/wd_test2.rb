# CapybaraでFirefoxを立ち上げるテスト

require 'webdrivers'
require 'logger'
require 'capybara'

Webdrivers.logger.level = :debug
#Webdrivers.logger.output = 'k_webdrivers.log'

p "CapybaraでFirefoxを立ち上げるテスト開始"
#Selenium::WebDriver::Firefox::Driver.new # これはうまく行く
#driver = Selenium::WebDriver.for :firefox  # これはOK

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :firefox
  )
end

Capybara::Session.new(:selenium).tap {|session|
  session.visit "https://google.com/"
}

#driver = Capybara::Selenium::Driver.new # 引数が足りない、でエラー
#p driver

#driver.navigate.to "https://google.com/"

#sleep 5
