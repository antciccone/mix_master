require 'rails_helper'

RSpec.feature "user submits a new song" do
  scenario "user can enter data into song form" do
  artist = create(:artist)


  visit artist_path(artist)

  click_on "New Song"
  fill_in "song_title", with: "Like Real People Do"
  click_on "Create Song"

  expect(page).to have_content "Like Real People Do"
  expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
