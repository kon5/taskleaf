require 'logger'
$k_logger = Logger.new('k_selenium.log')
$k_logger.level = :debug

require 'rails_helper'

describe 'MSNを見る' do
  context 'MSNをvisitしたとき' do
    before do
      visit "https://www.msn.com"
    end

    it 'MSNの文言がある' do
      expect(page).to have_content 'msn'
    end
  end
end
