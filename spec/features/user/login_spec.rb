require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) }

# js: true taken away from the below line. It causes issues with PhantomJS
  scenario 'user navigates to the login page and succesfully logs in' do
    user
    visit root_path
    find('nav a', text: 'Login').click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find('.login-button').click
    expect(page).to have_selector('#user-settings')
  end

end