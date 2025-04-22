class CreateCombat < ActiveRecord::Migration[7.2]
  def change
    create_table :combats do |t|
      t.integer :round, default: 0
      t.boolean :combat_active, default: true

      t.timestamps
    end
  end
end
