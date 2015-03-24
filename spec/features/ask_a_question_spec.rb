require 'rails_helper'

describe 'the ask a question process' do
  it 'adds a new question' do
    visit questions_path
    click_on 'Ask Question'
    fill_in 'question_text', with: 'Why is the sky blue?'
    click_on 'Ask'
    expect(page).to have_content 'Questions!'
  end
end
