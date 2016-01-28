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

ActiveRecord::Schema.define(version: 20160128174831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name",                            null: false
    t.text   "description"
    t.string "gif"
    t.string "ex_type",     default: "Barbell"
    t.string "source"
  end

  create_table "gym_sets", force: :cascade do |t|
    t.integer "exercise_id",                         null: false
    t.integer "workout_id",                          null: false
    t.decimal "weight",                              null: false
    t.integer "reps",                                null: false
    t.string  "type",        default: "Working Set", null: false
    t.boolean "complete",    default: false,         null: false
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
    t.string "image"
    t.string "source"
  end

  create_table "muscles", force: :cascade do |t|
    t.integer "muscle_group_id", null: false
    t.integer "user_id",         null: false
    t.string  "name",            null: false
    t.text    "description"
    t.string  "image"
    t.string  "source"
  end

  create_table "personal_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "exercise_id"
    t.decimal "weight",      default: 0.0, null: false
    t.integer "reps",        default: 1,   null: false
    t.date    "date"
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "user_id"
    t.date    "date",    null: false
    t.decimal "weight",  null: false
    t.string  "photo"
  end

  create_table "targets", force: :cascade do |t|
    t.integer "muscle_id"
    t.integer "exercise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: ""
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
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workouts", force: :cascade do |t|
    t.date    "date",    null: false
    t.string  "name"
    t.text    "notes"
    t.integer "user_id"
  end

end
