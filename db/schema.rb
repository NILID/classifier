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

ActiveRecord::Schema.define(version: 20200316035126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.boolean  "manager",                default: false
    t.boolean  "moderator",              default: false
    t.boolean  "paid_user",              default: false
    t.boolean  "free_user",              default: false
    t.boolean  "guest",                  default: true
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "xcategories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "synonym"
    t.string   "code"
    t.date     "version_date"
    t.boolean  "publish"
    t.integer  "user_id"
    t.integer  "xroot_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "xclasses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "synonym"
    t.string   "code"
    t.date     "version_date"
    t.boolean  "publish"
    t.integer  "user_id"
    t.integer  "xcategory_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "xroots", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "synonym"
    t.string   "code"
    t.date     "version_date"
    t.boolean  "publish"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
