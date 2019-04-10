class AddUserIdToSongs < ActiveRecord::Migration[5.2]
  def change
    rename_column :songs, :song_id, :user_id
    add_column :songs, :artist, :string
    add_column :songs, :genre, :string
    add_column :songs, :album, :string
  end
end
