require 'rails_helper'

RSpec.feature "User Can Login" do
  scenario "With valid login" do
    user = User.create(username: "Billy-Bob",
                      password: 'pass',
                      password_confirmation: "pass")

    visit login_path
    expect(page).to have_content("Please Login")
    fill_in "session[username]", with: "Billy-Bob"
    fill_in "session[password]", with: 'pass'
    fill_in "session[password_confirmation]", with: 'pass'

    click_on "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome Billy-Bob!")
  end
end
