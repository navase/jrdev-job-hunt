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

ActiveRecord::Schema.define(version: 20160305133930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "company_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "description"
    t.string   "size"
    t.string   "salary_indication"
    t.string   "jr_sr_ratio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "connects", force: :cascade do |t|
    t.integer  "junior_profile_id"
    t.integer  "company_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "connects", ["company_profile_id"], name: "index_connects_on_company_profile_id", using: :btree
  add_index "connects", ["junior_profile_id"], name: "index_connects_on_junior_profile_id", using: :btree

  create_table "junior_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "city"
    t.string   "picture"
    t.boolean  "ruby",         default: false
    t.boolean  "rails",        default: false
    t.boolean  "javascript",   default: false
    t.boolean  "node",         default: false
    t.boolean  "react",        default: false
    t.boolean  "jquery",       default: false
    t.boolean  "php",          default: false
    t.boolean  "java",         default: false
    t.boolean  "net",          default: false
    t.boolean  "cplusplus",    default: false
    t.boolean  "coffeescript", default: false
    t.boolean  "csharp",       default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "junior_profile_id"
    t.integer  "company_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "messages", ["company_profile_id"], name: "index_messages_on_company_profile_id", using: :btree
  add_index "messages", ["junior_profile_id"], name: "index_messages_on_junior_profile_id", using: :btree

  add_foreign_key "connects", "company_profiles"
  add_foreign_key "connects", "junior_profiles"
  add_foreign_key "messages", "company_profiles"
  add_foreign_key "messages", "junior_profiles"
end
