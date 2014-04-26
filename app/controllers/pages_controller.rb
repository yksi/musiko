class PagesController < ApplicationController
  def index
    if user_signed_in?
      @playlists = current_user.playlists
      @song = Song.new
    end
  end
end
