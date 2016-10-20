require 'rails_helper'

RSpec.feature "User gets an error" do
  scenario  "user fails to fill in song title" do
    artist = create_list(:artist, 1)

    visit artists_path
    click_on artist.first.name
    click_on "New Song"
    click_on "Create Song"

    save_and_open_page
    
    expect(page)
  end
end
