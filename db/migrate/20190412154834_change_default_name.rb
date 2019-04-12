class ChangeDefaultName < ActiveRecord::Migration[5.2]
  def change
    change_column :hidden_gems, :name, :string, :default => "Gem's Pile"
  end
end
