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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121101215451) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "hashtag"
  end

  create_table "participants", :force => true do |t|
    t.string   "name"
    t.string   "position"
    t.string   "hashtag"
    t.string   "twitter_handle"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "image_name"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "event_id"
    t.integer  "participant_id"
    t.integer  "rating_count"
    t.integer  "total_rating"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "ratings", ["event_id", "participant_id"], :name => "index_ratings_on_event_id_and_participant_id"
  add_index "ratings", ["event_id"], :name => "index_ratings_on_event_id"
  add_index "ratings", ["participant_id"], :name => "index_ratings_on_participant_id"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.string   "is_admin"
  end

end
