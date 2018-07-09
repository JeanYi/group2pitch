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

ActiveRecord::Schema.define(version: 2018_07_08_224251) do

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
    t.integer "role", default: 0
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string "subject_one"
    t.string "subject_two"
    t.integer "budget"
    t.date "start_date"
    t.date "end_date"
    t.string "venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.bigint "listing_id"
    t.index ["client_id"], name: "index_enquiries_on_client_id"
    t.index ["listing_id"], name: "index_enquiries_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "short_desc"
    t.string "long_desc"
    t.date "start_date"
    t.date "end_date"
    t.string "venue"
    t.bigint "client_id"
    t.bigint "trainer_id"
    t.bigint "enquiry_id"
    t.integer "payment_status", default: 0
    t.index ["client_id"], name: "index_listings_on_client_id"
    t.index ["enquiry_id"], name: "index_listings_on_enquiry_id"
    t.index ["trainer_id"], name: "index_listings_on_trainer_id"
  end

  create_table "static_listings", force: :cascade do |t|
    t.string "venue"
    t.string "description"
    t.string "budget"
    t.string "pax"
    t.string "duration"
    t.string "requirement"
    t.string "audience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "title"
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
    t.integer "competency", default: 0
  end

  add_foreign_key "listings", "clients"
  add_foreign_key "listings", "enquiries"
  add_foreign_key "listings", "trainers"
end
