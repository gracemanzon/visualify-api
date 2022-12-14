# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_12_190000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "snapshot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "title"
    t.integer "snapshot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "snapshots", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "artists", array: true
    t.string "tracks", array: true
    t.string "genres", array: true
    t.string "albums", array: true
    t.integer "artist_followers", array: true
    t.integer "artist_popularity", array: true
    t.integer "track_popularity", array: true
    t.string "artist_images", array: true
    t.string "album_images", array: true
    t.string "recently_played", array: true
    t.string "track_artist", array: true
    t.string "recently_played_artist", array: true
    t.string "recently_played_album_art", array: true
    t.integer "recently_played_popularity", array: true
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "album"
    t.string "album_art"
    t.integer "snapshot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
