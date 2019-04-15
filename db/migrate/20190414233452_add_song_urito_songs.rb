class AddSongUritoSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :song_uri, :string
  end
end
