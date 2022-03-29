
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :firefox
  )
end

require 'rails_helper'

describe 'MSNを見る' do
  context 'MSNをvisitしたとき' do
    before do
      #visit "https://www.msn.com"
      visit login_path
    end

    it 'MSNの文言がある' do
      #expect(page).to have_content 'msn'
      expect(page).to have_content 'Task'
    end
  end
end
