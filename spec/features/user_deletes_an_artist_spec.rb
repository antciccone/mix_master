require 'rails_helper'

RSpec.describe "user has the ability to delete an artist" do
  scenario "user can click on delete to delete artist" do
    Artist.create(name: "Bob", image_path: "www.google.com.jpg")

    visit 'artists'
    click_on "Bob"

    expect(page).to have_content "Bob"

    click_on "Delete"

    expect(page).to_not have_content "Bob"
    expect(page).to  have_current_path(artists_path)
  end
end
