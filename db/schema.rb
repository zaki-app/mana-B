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

ActiveRecord::Schema.define(version: 2021_09_06_144551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "staff_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "place"
    t.text "place_remarks"
    t.integer "salary"
    t.integer "koutsuhi"
    t.text "money_remarks"
    t.index ["company_id"], name: "index_admins_on_company_id"
    t.index ["staff_id"], name: "index_admins_on_staff_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "product"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "place"
    t.text "place_remarks"
    t.integer "salary"
    t.integer "koutsuhi"
    t.text "money_remorks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "name_kanak"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "admins", "companies"
  add_foreign_key "admins", "staffs"
end