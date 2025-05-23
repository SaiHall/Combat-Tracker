# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_04_22_133447) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combats", force: :cascade do |t|
    t.integer "round", default: 0
    t.boolean "combat_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_characters", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "ac"
    t.integer "initiative", default: 0
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_characters_combats", force: :cascade do |t|
    t.integer "initiative"
    t.integer "combat_hp"
    t.string "combat_status", array: true
    t.boolean "turn_active"
    t.string "combat_notes"
    t.bigint "player_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "combat_id", null: false
    t.index ["combat_id"], name: "index_player_characters_combats_on_combat_id"
    t.index ["player_character_id"], name: "index_player_characters_combats_on_player_character_id"
  end

  add_foreign_key "player_characters_combats", "combats"
end
