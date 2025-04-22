class CreatePlayerCharactersCombat < ActiveRecord::Migration[7.2]
  def change
    create_table :player_characters_combats, force: :cascade do |t|
      t.integer :initiative
      t.integer :combat_hp
      t.string :combat_status, array: true
      t.boolean :turn_active
      t.string :combat_notes
      t.bigint "player_character_id", null: false
      t.index ["player_character_id"], name: "index_player_characters_combats_on_player_character_id"

      t.timestamps
    end
  end
end
