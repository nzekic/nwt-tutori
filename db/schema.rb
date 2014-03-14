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

ActiveRecord::Schema.define(version: 20140313163754) do

  create_table "subject_tutor_members", force: true do |t|
    t.integer  "subjecttutorID"
    t.integer  "userID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_tutors", force: true do |t|
    t.integer  "subjectID"
    t.integer  "userID"
    t.float    "rateperhour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "faculty"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "familyName"
    t.string   "email"
    t.integer  "userroleID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
