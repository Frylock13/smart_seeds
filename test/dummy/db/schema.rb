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

ActiveRecord::Schema.define(version: 20170528162219) do

  create_table "big_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "entities", force: :cascade do |t|
    t.integer  "status",             default: 0
    t.binary   "binary_data"
    t.boolean  "boolean_data"
    t.date     "date_data"
    t.datetime "datetime_data"
    t.decimal  "decimal_data"
    t.float    "float_data"
    t.integer  "integer_data"
    t.string   "string_data"
    t.text     "text_data"
    t.time     "time_data"
    t.integer  "category_id"
    t.integer  "big_category_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "default_integer",    default: 1
    t.boolean  "default_boolean",    default: true
    t.integer  "custom_category_id"
  end

  create_table "superheros", force: :cascade do |t|
    t.string "name"
    t.string "power"
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
