class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img_url, :string
    add_column :users, :followers, :string
    add_column :users, :spotify_id, :string
  end
end
