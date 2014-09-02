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

ActiveRecord::Schema.define(version: 20140831022721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "events", force: true do |t|
    t.string   "type"
    t.string   "from_user_name"
    t.string   "to_user_name"
    t.datetime "create_time"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.decimal  "precision"
    t.integer  "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "to_user_name"
    t.string   "from_user_name"
    t.datetime "create_time"
    t.string   "type"
    t.text     "content"
    t.string   "msgid"
    t.string   "picture_url"
    t.string   "media_id"
    t.string   "format"
    t.string   "thumb_media_id"
    t.decimal  "location_x"
    t.decimal  "location_y"
    t.decimal  "scale"
    t.string   "label"
    t.string   "title"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subscriber_id"
  end

  add_index "messages", ["subscriber_id"], name: "index_messages_on_subscriber_id", using: :btree

  create_table "quizzes", force: true do |t|
    t.string   "picture"
    t.hstore   "choices"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.string   "type"
    t.string   "from_user_name"
    t.string   "to_user_name"
    t.datetime "create_time"
    t.text     "content"
    t.string   "media_id"
    t.string   "title"
    t.string   "description"
    t.string   "music_url"
    t.string   "hq_music_url"
    t.string   "thumb_media_id"
    t.integer  "articles_count"
    t.string   "picture_url"
    t.string   "url"
    t.integer  "message_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  add_index "responses", ["event_id"], name: "index_responses_on_event_id", using: :btree
  add_index "responses", ["message_id"], name: "index_responses_on_message_id", using: :btree

  create_table "subscribers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
