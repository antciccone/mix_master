require 'rails_helper'

RSpec.describe "user vists All Artists page" do
  scenario "user see's artists names" do
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    Artist.create(name: "Anthony", image_path: artist_image_path)
    Artist.create(name: "Bob", image_path: artist_image_path)

    visit '/artists'

    expect(page).to have_content "Anthony"
    expect(page).to have_content "Bob"
  end

  scenario "user see's artists names" do
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    Artist.create(name: "Anthony", image_path: artist_image_path)
    Artist.create(name: "Bob", image_path: artist_image_path)

    visit '/artists'
    click_on "Bob"

    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
