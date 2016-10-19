class PlaylistsController < ApplicationController
  before_action :set_playlists, only:[:show, :edit, :update, :destroy]
  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def show
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.save
    redirect_to playlist_path(@playlist)
  end

  def edit
    @songs = Song.all
  end

  def update
    @playlist.update(playlist_params)
    redirect_to playlist_path(@playlist)
  end

  def destroy
    @playlist.destroy
    redirect_to playlists_path
  end


  private

  def set_playlists
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end
end
