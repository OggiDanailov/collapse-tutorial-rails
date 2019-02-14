require "rails_helper"

RSpec.feature "Logout", :type => :feature do
  let(:user) { create(:user) }

# js: true taken away from the below line. It causes issues with PhantomJS
  scenario 'user successfully logs out' do
    sign_in user
    visit root_path
    find('nav #user-settings').click
    find('nav a', text: 'Log out').click
    expect(page).to have_selector('nav a', text: 'Login')
  end

end