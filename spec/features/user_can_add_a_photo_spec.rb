require 'rails_helper'

RSpec.feature "user can add photos" do
  context "Authourized user" do
    scenario "can add a photo" do
      user = User.create(username: "Billy-Bob",
                        password: 'pass',
                        password_confirmation: "pass")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit photos_path
      click_on "Add a Photo"

      fill_in "photo[url]", with: "http://kingofwallpapers.com/gnome/gnome-010.jpg"
      fill_in "photo[caption]", with: "string-kini!"
      select 'Funny', from: "photo[category]"
      click_on "Save Photo"

      expect(page).to have_content "string-kini!"
    end
  end

  scenario "user sees all movies" do
    user = User.create(username: "Billy-Bob",
                      password: 'pass',
                      password_confirmation: "pass")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end
end
