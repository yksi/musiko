class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
