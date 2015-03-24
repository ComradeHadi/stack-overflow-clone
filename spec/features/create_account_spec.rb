require 'rails_helper'

describe 'the create user account process' do
  it 'creates a user account' do
    visit new_user_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'created'
  end
end
