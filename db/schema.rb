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

ActiveRecord::Schema.define(version: 2021_11_03_034821) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "company_name"
    t.string "about"
    t.string "email"
    t.string "phone"
    t.string "web_link"
    t.string "photo"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal"
    t.integer "available_spots"
    t.string "price"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
