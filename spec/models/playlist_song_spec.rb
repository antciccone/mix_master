
RSpec.describe PlaylistSong, "associations", type: :model do
  it { should belong_to(:playlist) }
  it { should belong_to(:song)}
end
