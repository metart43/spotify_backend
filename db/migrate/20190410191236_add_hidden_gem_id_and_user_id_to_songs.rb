class AddHiddenGemIdAndUserIdToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :song_id, :integer
    add_column :songs, :hidden_gem_id, :integer
  end
end
