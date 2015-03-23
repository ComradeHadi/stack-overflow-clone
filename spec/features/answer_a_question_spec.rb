require 'rails_helper'

describe 'the answer a question process' do
  it 'answers a question' do
    FactoryGirl.create(:question)
    visit questions_path
    first('.question' ).click
    click_on "Answer Question"
  end
end
