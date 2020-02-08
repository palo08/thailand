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

ActiveRecord::Schema.define(version: 20200131081021) do

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "area",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image",      null: false
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_images_on_shop_id", using: :btree
  end

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",           null: false
    t.string   "fee",            null: false
    t.integer  "treatment_time", null: false
    t.integer  "shop_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["shop_id"], name: "index_menus_on_shop_id", using: :btree
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",           null: false
    t.string   "genre"
    t.string   "address",        null: false
    t.string   "holiday"
    t.string   "japanese_staff"
    t.string   "map_code"
    t.integer  "open_hours"
    t.integer  "close_hours"
    t.integer  "area_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["area_id"], name: "index_shops_on_area_id", using: :btree
  end

  add_foreign_key "images", "shops"
  add_foreign_key "menus", "shops"
  add_foreign_key "shops", "areas"
end
