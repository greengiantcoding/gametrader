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

ActiveRecord::Schema.define(version: 20150506202629) do

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "forum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating"
  end

  add_index "comments", ["forum_id"], name: "index_comments_on_forum_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "forums", force: true do |t|
    t.string   "game_title"
    t.string   "game_category"
    t.text     "topic_title"
    t.text     "topic_content"
    t.integer  "user_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forums", ["comment_id"], name: "index_forums_on_comment_id"
  add_index "forums", ["user_id"], name: "index_forums_on_user_id"

  create_table "games", force: true do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "description"
    t.string   "quality"
    t.string   "trade_status"
    t.string   "trade_price"
    t.string   "sell_status"
    t.float    "sell_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "platform"
  end

  create_table "privileges", force: true do |t|
    t.integer  "user_id"
    t.string   "access"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id"
    t.integer  "comment_id"
    t.integer  "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["comment_id"], name: "index_ratings_on_comment_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
