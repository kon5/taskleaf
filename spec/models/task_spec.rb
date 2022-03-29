require 'rails_helper'

RSpec.describe Task, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'taskモデルのテストの試し' do
    task = FactoryBot.build(:task)
    expect(task).to be_valid
  end
end
