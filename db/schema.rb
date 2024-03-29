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

ActiveRecord::Schema.define(:version => 20120510213050) do

  create_table "articles", :force => true do |t|
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

  create_table "challenges", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.time     "duration"
  end

  create_table "user_challenges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "user_challenges", ["challenge_id"], :name => "index_user_challenges_on_challenge_id"
  add_index "user_challenges", ["user_id", "challenge_id"], :name => "index_user_challenges_on_user_id_and_challenge_id", :unique => true
  add_index "user_challenges", ["user_id"], :name => "index_user_challenges_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "admin",      :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
