class CreatePlayerCharacter < ActiveRecord::Migration[7.2]
  def change
    create_table :player_characters do |t|
      t.string :name
      t.integer :hp
      t.integer :ac
      t.integer :initiative, default: 0
      t.string :notes

      t.timestamps
    end
  end
end
