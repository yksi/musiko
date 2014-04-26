class PlaylistsController < ApplicationController
  def new
    if user_signed_in?
      @playlist = current_user.playlists.new
    else
      redirect_to root_path
    end
  end

  def create
    current_user.playlists.create(playlist_params)
    redirect_to playlists_path
  end

  def index
    @playlists = current_user.playlists
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
