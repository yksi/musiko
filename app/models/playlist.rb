class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :songs, class_name: "Song", foreign_key: 'playlist_id'
end
