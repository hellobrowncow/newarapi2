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

ActiveRecord::Schema.define(version: 20140718042336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "collections", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "location"
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "color"
    t.string   "clothing_type"
    t.string   "picture"
    t.boolean  "favorite"
    t.uuid     "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.integer "rank"
    t.uuid    "item_id"
    t.uuid    "user_id"
  end

  create_table "tags", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string "name"
    t.uuid   "item_id"
  end

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.string   "salt"
    t.string   "fish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
