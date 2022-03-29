# ruby単体でブラウザを立ち上げるテスト

require 'webdrivers'
require 'logger'

#$k_logger = Logger.new('k_selenium.log')
#$k_logger.level = :debug

Webdrivers.logger.level = :debug
Webdrivers.logger.output = 'k_webdrivers.log'

p "テスト開始"
#Selenium::WebDriver::Firefox::Driver.new # これはうまく行く

#driver = Selenium::WebDriver.for :firefox  # これはOK
#driver.navigate.to "https://google.com/"

Selenium::WebDriver::Chrome::Driver.new # これはNG。Net::OpenTimeout
#Selenium::WebDriver.for :chrome # これもNG。Net::OpenTimeout
sleep 5
