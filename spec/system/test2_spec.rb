require 'rails_helper'

#Capybara.default_driver = :rack_test

=begin
Capybara.register_driver :selenium_chrome_headless do |app|
  options = ::Selenium::WebDriver::Chrome::Options.new

  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1400,1400')

  driver = Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :selenium_chrome_headless
=end

#describe '...', driver: :selenium
#describe 'rack_test', driver: :rack_test do
describe 'test' do
  before do
    #driver = Selenium::WebDriver.for :chrome
    driver = Selenium::WebDriver.for :firefox
    driver.navigate.to "https://google.com/"
    sleep 5
    #visit "https://www.msn.com"
    #value = %x( echo 'hi' )
    #value = %x( pwd )
    value = %x( chromedriver -v )
    p value
    #exec( pwd )
  end

  it 'ダミー' do
    #expect(page).to has_text?('msn')
    expect(2+2).to eq 4
  end
end
