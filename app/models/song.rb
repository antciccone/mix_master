class Song < ApplicationRecord
  belongs_to :artist
  validates :title, presence: true, uniqueness: true
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs
end
