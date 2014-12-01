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

ActiveRecord::Schema.define(:version => 20121012165948) do

  create_table "categories_milestones", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "milestone_id"
  end

  add_index "categories_milestones", ["category_id", "milestone_id"], :name => "index_categories_milestones_on_category_id_and_milestone_id"

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "likes", :force => true do |t|
    t.integer  "likeable_id"
    t.string   "likeable_type"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "user_id",       :limit => 10
  end

  create_table "milestones", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.date     "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "message"
    t.date     "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "user_id",             :limit => 10
    t.string   "story",               :limit => 500
    t.string   "mphoto_file_name"
    t.string   "mphoto_content_type"
    t.integer  "mphoto_file_size"
    t.datetime "mphoto_updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.date     "Born_on"
    t.string   "Gender"
    t.string   "Location"
    t.text     "About"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "user_id",            :limit => 10
    t.string   "image"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "name",               :limit => nil
    t.string   "bio",                :limit => 225
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "provider"
    t.string   "uid"
  end

end
