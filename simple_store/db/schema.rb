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

ActiveRecord::Schema.define(version: 20150206002514) do

  create_table "catalogs", force: :cascade do |t|
    t.string  "name",   limit: 255,                 null: false
    t.boolean "active", limit: 1,   default: false
  end

  create_table "categories", force: :cascade do |t|
    t.string  "name",        limit: 255,   null: false
    t.text    "description", limit: 65535
    t.integer "catalog_id",  limit: 4
    t.integer "parent_id",   limit: 4
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id", limit: 4
    t.integer "product_id",  limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        limit: 255,   null: false
    t.text    "description", limit: 65535, null: false
    t.float   "price",       limit: 24
    t.integer "catalog_id",  limit: 4
  end

end
