class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :access_token
      t.string :refreshed_token
      t.string :spotify_url
      t.string :profile_url
      t.string :uri
      
      t.timestamps
    end
  end
end
