require 'rails_helper'

describe 'the answer a question process' do
  it 'answers a question' do
    FactoryGirl.create(:question)
    visit questions_path
    first('.question' ).click
    click_on 'Answer Question'
    fill_in 'answer_text', with: 'This is a super informative answer.'
    expect(page).to have_content 'This is a super informative answer.'
  end
end
