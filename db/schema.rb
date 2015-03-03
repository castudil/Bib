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

ActiveRecord::Schema.define(version: 20141227182231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "articles", force: true do |t|
    t.string   "journal"
    t.string   "volume"
    t.string   "pages"
    t.string   "number"
    t.string   "month"
    t.text     "abstract"
    t.string   "doi"
    t.string   "file"
    t.string   "issn"
    t.string   "issue"
    t.string   "keyword"
    t.string   "publisher"
    t.string   "url"
    t.string   "owner"
    t.string   "timestamp"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bibs", force: true do |t|
    t.text     "author"
    t.text     "title"
    t.integer  "year"
    t.integer  "tipo"
    t.string   "path"
    t.integer  "heir_id"
    t.string   "heir_type"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bibtexes", force: true do |t|
    t.string   "filename"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "publisher"
    t.string   "doi"
    t.string   "pages"
    t.string   "address"
    t.string   "edition"
    t.string   "isbn"
    t.string   "month"
    t.string   "note"
    t.string   "owner"
    t.string   "timestamp"
    t.string   "url"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incollections", force: true do |t|
    t.string   "booktitle"
    t.string   "publisher"
    t.string   "keywords"
    t.string   "editor"
    t.string   "volume"
    t.string   "series"
    t.string   "pages"
    t.text     "abstract"
    t.string   "affiliation"
    t.string   "doi"
    t.string   "file"
    t.string   "isbn"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inproceedings", force: true do |t|
    t.text     "booktitle"
    t.string   "editor"
    t.string   "pages"
    t.text     "address"
    t.text     "publisher"
    t.string   "doi"
    t.string   "isbn"
    t.text     "location"
    t.text     "abstract"
    t.text     "bibsource"
    t.string   "crossref"
    t.text     "ee"
    t.text     "file"
    t.string   "owner"
    t.text     "timestamp"
    t.text     "url"
    t.text     "review"
    t.text     "issn"
    t.text     "keywords"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "masterthesis", force: true do |t|
    t.string   "school"
    t.string   "address"
    t.string   "month"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pdfs", force: true do |t|
    t.string   "fileName"
    t.string   "pdfFile_file_name"
    t.string   "pdfFile_content_type"
    t.integer  "pdfFile_file_size"
    t.datetime "pdfFile_updated_at"
    t.integer  "bib_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phdthesis", force: true do |t|
    t.string   "school"
    t.string   "owner"
    t.string   "timestamp"
    t.string   "address"
    t.string   "type"
    t.string   "file"
    t.string   "url"
    t.text     "abstract"
    t.integer  "id_h"
    t.integer  "bibtex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "last_name"
    t.string   "biography"
    t.string   "graduation_year"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "superUser"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",               default: false, null: false
  end

  add_index "users", ["approved"], name: "index_users_on_approved", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
