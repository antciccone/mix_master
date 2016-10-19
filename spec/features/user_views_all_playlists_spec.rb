require 'rails_helper'

RSpec.feature "User can see all playlists" do
  scenario "user can see all playlist and click on link" do
    playlist_one, playlist_two = create_list(:playlist, 2)

    visit '/playlists'

    expect(page).to have_content playlist_one.name
    expect(page).to have_content playlist_two.name
  end
end
