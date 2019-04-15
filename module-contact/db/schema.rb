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

ActiveRecord::Schema.define(version: 2019_04_14_141433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "subject"
    t.bigint "subject_contact_id"
    t.text "message"
    t.boolean "accepted"
    t.boolean "newsletter"
    t.boolean "automatic_answer"
    t.boolean "manual_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_contact_id"], name: "index_contacts_on_subject_contact_id"
  end

  create_table "subject_contact_translations", force: :cascade do |t|
    t.bigint "subject_contact_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "variable_name"
    t.index ["locale"], name: "index_subject_contact_translations_on_locale"
    t.index ["subject_contact_id"], name: "index_subject_contact_translations_on_subject_contact_id"
  end

  create_table "subject_contacts", force: :cascade do |t|
    t.string "name"
    t.string "variable_name"
    t.boolean "inactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contacts", "subject_contacts"
end
