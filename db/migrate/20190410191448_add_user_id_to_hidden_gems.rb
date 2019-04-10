class AddUserIdToHiddenGems < ActiveRecord::Migration[5.2]
  def change
    add_column :hidden_gems, :user_id, :integer
  end
end
