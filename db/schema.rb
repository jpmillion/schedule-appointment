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

ActiveRecord::Schema.define(version: 2021_09_04_025918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "week_day_id", null: false
    t.bigint "coach_id", null: false
    t.bigint "user_id", null: false
    t.index ["coach_id"], name: "index_appointments_on_coach_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
    t.index ["week_day_id"], name: "index_appointments_on_week_day_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_slots", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "coach_id", null: false
    t.bigint "week_day_id", null: false
    t.boolean "available"
    t.index ["coach_id"], name: "index_time_slots_on_coach_id"
    t.index ["week_day_id"], name: "index_time_slots_on_week_day_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "week_days", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "coaches"
  add_foreign_key "appointments", "users"
  add_foreign_key "appointments", "week_days"
  add_foreign_key "time_slots", "coaches"
  add_foreign_key "time_slots", "week_days"
end
