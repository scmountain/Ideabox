require 'rails_helper'

RSpec.feature "user can add comment" do
  context "Authourized user" do
    scenario "can add a photo" do
      setup
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit photos_path
      click_on "Add Comment"

      fill_in ""
    end
  end
end
password_confirmation: "pass")

def setup
  user = User.create(username: "Billy-Bob",
  password: 'pass',
  photo = Photo.create(url: "http://kingofwallpapers.com/gnome/gnome-010.jpg",
              caption: "string-kini", category: "funny")
  comment = Comment.create(text: "It is the Borat!",
                          user_id: user.id,
                          photo_id: photo.id)
end
