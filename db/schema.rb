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

ActiveRecord::Schema.define(version: 20170523081424) do

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "title_ja"
    t.string "title_en"
    t.text "description_ja"
    t.text "description_en"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_articles_on_artist_id"
  end

  create_table "artist_exhibitions", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "exhibition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.boolean "regular"
    t.string "web_site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_image_file_name"
    t.string "cover_image_content_type"
    t.integer "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string "name_ja"
    t.string "name_en"
    t.text "description_ja"
    t.text "description_en"
    t.text "biography_ja"
    t.text "biography_en"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.datetime "starting_on"
    t.datetime "ending_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_image_file_name"
    t.string "cover_image_content_type"
    t.integer "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string "title_ja"
    t.string "title_en"
    t.string "sub_title_ja"
    t.string "sub_title_en"
    t.string "addition_ja"
    t.string "addition_en"
    t.text "description_ja"
    t.text "description_en"
  end

  create_table "main_images", force: :cascade do |t|
    t.string "title"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "topics", force: :cascade do |t|
    t.string "link"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_image_file_name"
    t.string "cover_image_content_type"
    t.integer "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.string "title_ja"
    t.string "title_en"
    t.string "sub_title_ja"
    t.string "sub_title_en"
    t.text "content_ja"
    t.text "content_en"
  end

end
