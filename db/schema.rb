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

ActiveRecord::Schema.define(:version => 20110129235851) do

  create_table "albums", :force => true do |t|
    t.string   "album_cover_title",        :default => ""
    t.string   "full_title"
    t.string   "title"
    t.text     "description"
    t.integer  "position"
    t.integer  "album_cover_photo_id"
    t.string   "album_cover_file_name"
    t.string   "album_cover_content_type"
    t.integer  "album_cover_file_size"
    t.datetime "album_cover_updated_at"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "state",                    :default => "hidden"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.date     "date"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "state",      :default => "hidden"
  end

  create_table "films", :force => true do |t|
    t.string   "film_type"
    t.string   "title"
    t.text     "description"
    t.string   "director"
    t.string   "year"
    t.string   "color"
    t.string   "film_length"
    t.string   "languages"
    t.string   "film_thumb_file_name"
    t.string   "film_thumb_content_type"
    t.string   "film_thumb_file_size"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.boolean  "draft",                   :default => false
    t.string   "film_video_file_name"
    t.string   "film_video_content_type"
    t.string   "film_video_file_size"
    t.string   "state",                   :default => "hidden"
  end

  create_table "pages", :force => true do |t|
    t.string   "parent_name"
    t.string   "unique_name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "title",             :default => ""
    t.string   "name"
    t.text     "description"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.string   "data_file_size"
    t.integer  "position"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "photos", ["imageable_id", "imageable_type"], :name => "index_photos_on_imageable_id_and_imageable_type"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "users", :force => true do |t|
    t.string   "username",                           :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "videos", :force => true do |t|
    t.integer  "film_id"
    t.string   "associate_id"
    t.string   "video_data_file_name"
    t.string   "video_data_content_type"
    t.string   "video_data_file_size"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

end
