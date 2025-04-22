class AddCombatRefToPlayerCharactersCombats < ActiveRecord::Migration[7.2]
  def change
    add_reference :player_characters_combats, :combat, null: false, foreign_key: true
  end
end
