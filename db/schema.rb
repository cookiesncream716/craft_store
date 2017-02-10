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

ActiveRecord::Schema.define(version: 20170203212511) do

  create_table "buyers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone",           limit: 8
    t.string   "password_digest"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.string   "picture"
    t.integer  "category_id"
    t.boolean  "sold",        default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "sold_items", force: :cascade do |t|
    t.string   "item"
    t.string   "references"
    t.integer  "buyer_id"
    t.boolean  "shipped",      default: false
    t.string   "date_shipped"
    t.string   "date"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["buyer_id"], name: "index_sold_items_on_buyer_id"
  end

end
