# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141223085601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blackouts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blackouts", ["user_id"], name: "index_blackouts_on_user_id", using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.integer  "postal_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hospitals", ["postal_id"], name: "index_hospitals_on_postal_id", using: :btree

  create_table "postals", force: :cascade do |t|
    t.string   "postal_code"
    t.string   "prefecture"
    t.string   "prefecture_kana"
    t.string   "city"
    t.string   "city_kana"
    t.string   "town"
    t.string   "town_kana"
    t.string   "block"
    t.string   "block_kana"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "postals", ["prefecture"], name: "index_postals_on_prefecture", using: :btree

  create_table "shifts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hospital_id"
    t.datetime "start"
    t.datetime "end"
    t.integer  "points"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shifts", ["hospital_id"], name: "index_shifts_on_hospital_id", using: :btree
  add_index "shifts", ["points"], name: "index_shifts_on_points", using: :btree
  add_index "shifts", ["user_id"], name: "index_shifts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
