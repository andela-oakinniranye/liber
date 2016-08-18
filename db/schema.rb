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

ActiveRecord::Schema.define(version: 20160817000004) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "note_sources", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "note_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["note_id"], name: "index_note_sources_on_note_id"
    t.index ["provider_id"], name: "index_note_sources_on_provider_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.integer  "book_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_notes_on_book_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_providers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "provider_id"
    t.string   "api_key"
    t.string   "access_token"
    t.string   "refresh_token"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["provider_id"], name: "index_user_providers_on_provider_id"
    t.index ["user_id"], name: "index_user_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
