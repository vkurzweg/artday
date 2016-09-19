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

ActiveRecord::Schema.define(version: 20160917023110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.integer  "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artists", ["gallery_id"], name: "index_artists_on_gallery_id", using: :btree

  create_table "exhibitions", force: :cascade do |t|
    t.string   "name"
    t.date     "opening"
    t.date     "closing"
    t.text     "description"
    t.string   "image"
    t.integer  "gallery_id"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exhibitions", ["artist_id"], name: "index_exhibitions_on_artist_id", using: :btree
  add_index "exhibitions", ["gallery_id"], name: "index_exhibitions_on_gallery_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "zip"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "artists", "galleries"
  add_foreign_key "exhibitions", "artists"
  add_foreign_key "exhibitions", "galleries"
end
