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

ActiveRecord::Schema.define(version: 20140909215820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.integer  "movie_id"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["list_id"], name: "index_items_on_list_id", using: :btree
  add_index "items", ["movie_id", "list_id"], name: "index_items_on_movie_id_and_list_id", using: :btree
  add_index "items", ["movie_id"], name: "index_items_on_movie_id", using: :btree

  create_table "lists", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "movies", force: true do |t|
    t.string   "imdb_id"
    t.string   "title"
    t.date     "release_date"
    t.integer  "runtime"
    t.boolean  "adult"
    t.text     "overview"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movies", ["imdb_id"], name: "index_movies_on_imdb_id", unique: true, using: :btree
  add_index "movies", ["title", "release_date"], name: "index_movies_on_title_and_release_date", unique: true, using: :btree

  create_table "owns", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "movie_id"
  end

  add_index "owns", ["user_id", "movie_id"], name: "index_owns_on_user_id_and_movie_id", unique: true, using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "shares", force: true do |t|
    t.integer  "user_id"
    t.integer  "list_id"
    t.boolean  "writable",   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shares", ["list_id"], name: "index_shares_on_list_id", using: :btree
  add_index "shares", ["user_id", "list_id"], name: "index_shares_on_user_id_and_list_id", unique: true, using: :btree
  add_index "shares", ["user_id"], name: "index_shares_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
