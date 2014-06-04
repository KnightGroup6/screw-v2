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

ActiveRecord::Schema.define(version: 20140604154406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: true do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "phone"
    t.text     "email"
    t.integer  "job_id"
    t.integer  "trade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "budget_id"
    t.integer  "jobstartdate_id"
    t.text     "question"
    t.text     "postcode"
    t.text     "description"
  end

  create_table "budgets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs_trades", force: true do |t|
    t.integer  "job_id"
    t.integer  "trade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobstartdates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
