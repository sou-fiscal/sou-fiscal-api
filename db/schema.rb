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

ActiveRecord::Schema.define(version: 20170731021533) do

  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.string "cep"
    t.integer "user_id"
    t.integer "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_addresses_on_complaint_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "name"
    t.float "initial_value"
    t.date "initial_date"
    t.date "delivery_forecast"
    t.text "detail"
    t.string "contract"
    t.string "status"
    t.float "latitude"
    t.float "longitude"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_messages_on_complaint_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pics", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complaint_id"
    t.index ["complaint_id"], name: "index_pics_on_complaint_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "gender"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
