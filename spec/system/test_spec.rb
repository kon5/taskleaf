require 'rails_helper'

def add(a, b)
  a + b
end

describe 'add' do
  it '1+1は2になること' do
    visit "https://www.msn.com"
    expect(add(1,1)).to eq 2
  end
end
