class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :artist
      t.text :title
      t.text :url
      t.integer :playlist_id

      t.timestamps
    end
  end
end
