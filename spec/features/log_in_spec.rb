require 'rails_helper'

describe 'the log-in process' do
  it 'logs a user in' do
    FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'
    expect(page).to have_content 'You have been logged in'
  end
end
