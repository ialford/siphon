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

ActiveRecord::Schema.define(version: 20131118184300) do

  create_table "reformatting_books", force: true do |t|
    t.string "status"
    t.string "title"
    t.string "call_number"
    t.string "category"
    t.string "barcode"
    t.string "document_number"
    t.text   "data"
  end

  add_index "reformatting_books", ["document_number"], name: "index_reformatting_books_on_document_number", using: :btree
  add_index "reformatting_books", ["status"], name: "index_reformatting_books_on_status", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
    t.string   "email",              default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
