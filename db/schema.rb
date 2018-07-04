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


ActiveRecord::Schema.define(version: 2018_07_04_062254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "name_of_company"
    t.string "designation"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enquiries", force: :cascade do |t|
    t.string "subject_one"
    t.string "subject_two"
    t.integer "budget"
    t.date "start_date"
    t.date "end_date"
    t.string "venue"
    t.bigint "listings_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listings_id"], name: "index_enquiries_on_listings_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "short_desc"
    t.string "long_desc"
    t.date "start_date"
    t.date "end_date"
    t.string "venue"
  end

  create_table "trainers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest"
    t.string "skills"
    t.string "prior_experience"
    t.date "birthday"
    t.date "start_date"
    t.integer "rate_per_day"
  end

end
