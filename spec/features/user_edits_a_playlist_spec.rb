require 'rails_helper'

RSpec.feature "When a user vists 'playlist/:id/edit' " do
  scenario "a user can edit their paylist"  do

    playlist = Playlist.create(name: "Anthony")
    artist = Artist.create(name: "John", image_path: "google.com")

    song1 = Song.create(title: "Hey", artist_id: artist.id)
    song2 = Song.create(title: "Hello", artist_id: artist.id)
    song3 = Song.create(title: "Bye", artist_id: artist.id)


    playlist_song = PlaylistSong.create(song_id: song2.id, playlist_id: playlist.id)
    playlist_song = PlaylistSong.create(song_id: song1.id, playlist_id: playlist.id)


    visit playlist_path(playlist)
    click_on "Edit"
    uncheck "song-#{song1.id}"
    check "song-#{song3.id}"

    click_on "Update Playlist"

    expect(page).to have_current_path(playlist_path(playlist))
    expect(page).to have_content song3.title
    expect(page).to_not have_content song1.title

  end
end
