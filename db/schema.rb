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

ActiveRecord::Schema.define(version: 20160304130645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "junior_profiles", force: :cascade do |t|
    t.string   "name"
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
    t.integer  "junior_id"
  end

  add_index "junior_profiles", ["junior_id"], name: "index_junior_profiles_on_junior_id", using: :btree

  create_table "juniors", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_foreign_key "junior_profiles", "juniors"

  create_table "companies", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "company_profiles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "size"
    t.string   "salary_indication"
    t.string   "jr_sr_ratio"
    t.integer  "company_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "juniors", ["email"], name: "index_juniors_on_email", unique: true, using: :btree
  add_index "juniors", ["reset_password_token"], name: "index_juniors_on_reset_password_token", unique: true, using: :btree
  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree
  add_index "company_profiles", ["company_id"], name: "index_company_profiles_on_company_id", using: :btree

  add_foreign_key "company_profiles", "companies"
end
