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

ActiveRecord::Schema.define(version: 2019_07_31_213717) do

  create_table "interests", force: :cascade do |t|
    t.string "hobbies"
    t.string "type_of_person"
    t.boolean "love_animals"
    t.string "lifestyle"
    t.string "diet"
    t.boolean "rescue_animals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "free_time"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "matcher_id"
    t.boolean "match"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.string "identity"
    t.string "location"
    t.date "date_of_birth"
    t.string "partner"
    t.string "relationship_type"
    t.string "photo", default: "avtar.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
  end

end
