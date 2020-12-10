# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_10_221752) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "titles"
    t.integer "wins"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_drivers_on_team_id"
  end

  create_table "entries", force: :cascade do |t|
    t.integer "team_id"
    t.integer "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_entries_on_race_id"
    t.index ["team_id"], name: "index_entries_on_team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.integer "pos"
    t.integer "driver_id"
    t.integer "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_positions_on_driver_id"
    t.index ["race_id"], name: "index_positions_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.date "date"
    t.string "name"
    t.integer "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_races_on_track_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.integer "budget"
    t.integer "staff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.integer "laps"
    t.float "lapLength"
    t.float "raceLength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
