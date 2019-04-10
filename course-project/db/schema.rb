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

ActiveRecord::Schema.define(version: 2019_04_10_181504) do

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.date "creation_date"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dis_liked_posts", force: :cascade do |t|
    t.date "creation_date"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_dis_liked_posts_on_post_id"
    t.index ["user_id"], name: "index_dis_liked_posts_on_user_id"
  end

  create_table "geofences", force: :cascade do |t|
    t.string "area"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liked_posts", force: :cascade do |t|
    t.date "creation_date"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_liked_posts_on_post_id"
    t.index ["user_id"], name: "index_liked_posts_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.date "creation_date"
    t.text "text"
    t.string "title"
    t.integer "user_id"
    t.integer "geofence_id"
    t.boolean "apropriated"
    t.boolean "is_open"
    t.boolean "is_solved"
    t.integer "share_counter"
    t.integer "report_counter"
    t.boolean "is_hidden"
    t.boolean "is_linked"
    t.boolean "file_attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geofence_id"], name: "index_posts_on_geofence_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.text "text"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_reports_on_post_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "lastname"
    t.string "password"
    t.string "address"
    t.integer "phone"
    t.text "profile"
    t.boolean "is_suspended"
    t.boolean "has_prev_suspension"
    t.boolean "is_blocked"
    t.integer "geofence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geofence_id"], name: "index_users_on_geofence_id"
  end

end
