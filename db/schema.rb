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

ActiveRecord::Schema.define(version: 2022_10_17_083959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artisans", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.float "tjm", default: 0.0
    t.text "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "artisans_skills", id: false, force: :cascade do |t|
    t.integer "artisan_id"
    t.integer "skill_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artisan_id"], name: "index_artisans_skills_on_artisan_id"
    t.index ["skill_id"], name: "index_artisans_skills_on_skill_id"
  end

  create_table "missions", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.float "price", default: 0.0
    t.text "desc"
    t.bigint "artisan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artisan_id"], name: "index_missions_on_artisan_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "missions", "artisans"
end
