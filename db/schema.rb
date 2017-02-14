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

ActiveRecord::Schema.define(version: 20170214131250) do

  create_table "children", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "birthdate"
    t.datetime "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "start_time"
    t.string   "end_time"
    t.datetime "date"
    t.string   "ages_group"
    t.string   "activity"
    t.string   "title"
    t.string   "description"
    t.integer  "open_spots"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "partner_id"
    t.boolean  "primary_location"
    t.string   "street1"
    t.string   "street2"
    t.string   "country"
    t.string   "province"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "postcode"
    t.string   "phone"
    t.integer  "total_bookings"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "partners", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "phone"
    t.integer  "booking_rate"
    t.integer  "account_balance"
    t.integer  "total_bookings"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer  "session_limit"
    t.string   "description"
    t.string   "name"
    t.string   "interval"
    t.string   "currency"
    t.integer  "amount"
    t.string   "stripe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "start_time"
    t.string   "end_time"
    t.datetime "date"
    t.string   "ages"
    t.string   "activity"
    t.string   "title"
    t.string   "description"
    t.integer  "available_spots"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "plan_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "stripe_id"
    t.string   "postcode"
    t.string   "phone"
    t.string   "primary_city"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "province"
    t.integer  "drop_in_credits"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
