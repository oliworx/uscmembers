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

ActiveRecord::Schema.define(version: 20150430140249) do

  create_table "users", force: :cascade do |t|
    t.string   "email",                             default: "",       null: false
    t.string   "encrypted_password",                default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                   default: 0,        null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member_id",              limit: 16, default: "",       null: false
    t.string   "first_name",                        default: "",       null: false
    t.string   "family_name",                       default: "",       null: false
    t.string   "gender",                 limit: 8,  default: "",       null: false
    t.string   "location",                          default: "",       null: false
    t.string   "street",                            default: "",       null: false
    t.string   "zipcode",                limit: 8,  default: "",       null: false
    t.string   "country",                limit: 3,  default: "",       null: false
    t.string   "phone",                  limit: 16, default: "",       null: false
    t.string   "iban",                   limit: 34, default: "",       null: false
    t.string   "bic",                    limit: 11, default: "",       null: false
    t.string   "bank",                   limit: 32, default: "",       null: false
    t.string   "mandate_reference",      limit: 32, default: "",       null: false
    t.string   "status",                 limit: 8,  default: "active", null: false
    t.string   "comment",                           default: "",       null: false
    t.decimal  "fee",                               default: 0.0,      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
