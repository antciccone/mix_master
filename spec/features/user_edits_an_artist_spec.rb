require 'rails_helper'

RSpec.describe "user has ability to edit an artist" do
  scenario "user can enter data to update artist" do
    Artist.create(name: "Bob", image_path: "www.google.com.jpg")

    visit 'artists'
    click_on "Bob"
    click_on "Edit"
    fill_in "Name", with: "Anthony"
    click_on "Update Artist"

    expect(page).to have_content "Anthony"
  end
end
