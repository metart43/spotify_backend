class AddDefaultNameToHiddenGems < ActiveRecord::Migration[5.2]
  def change
    change_column :hidden_gems, :name, :string, :default => "Hidden Gems"
  end
end
