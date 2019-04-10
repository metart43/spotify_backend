class CreateHiddenGems < ActiveRecord::Migration[5.2]
  def change
    create_table :hidden_gems do |t|
      t.string :name

      t.timestamps
    end
  end
end
