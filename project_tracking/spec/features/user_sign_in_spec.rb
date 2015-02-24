require 'rails_helper'

feature 'User signs in' do
  scenario 'with valid credentials' do
    new_user = build(:user)
    new_user.skip_confirmation!
    new_user.save!

    visit new_user_session_path
    fill_in 'Email', with: new_user.email
    fill_in 'Password', with: new_user.password 
    click_on 'Log in'

    expect(page).to have_content('Welcome to Project Tracking')
  end
end