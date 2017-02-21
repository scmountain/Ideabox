require 'rails_helper'

RSpec.describe "UserCreations", type: :request do
  include Capybara::DSL
  describe "user can be created" do
    it "creates a new user" do
      visit sign_up_path
      fill_in 'user[username]', with: "Billy-Bob"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_on "Create Account"

      expect(page).to have_content("Billy-Bob")
    end
  end
end
