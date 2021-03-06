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

ActiveRecord::Schema.define(version: 20150129064244) do

  create_table "commentattachments", force: true do |t|
    t.integer  "comment_id"
    t.string   "document"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["order_id"], name: "index_comments_on_order_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "grmails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grmails_groups", id: false, force: true do |t|
    t.integer "group_id",  null: false
    t.integer "grmail_id", null: false
  end

  add_index "grmails_groups", ["grmail_id"], name: "index_grmails_groups_on_grmail_id"
  add_index "grmails_groups", ["group_id"], name: "index_grmails_groups_on_group_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_grmails", id: false, force: true do |t|
    t.integer "group_id",  null: false
    t.integer "grmail_id", null: false
  end

  add_index "groups_grmails", ["grmail_id"], name: "index_groups_grmails_on_grmail_id"
  add_index "groups_grmails", ["group_id"], name: "index_groups_grmails_on_group_id"

  create_table "groups_orders", id: false, force: true do |t|
    t.integer "group_id", null: false
    t.integer "order_id", null: false
  end

  add_index "groups_orders", ["group_id"], name: "index_groups_orders_on_group_id"
  add_index "groups_orders", ["order_id"], name: "index_groups_orders_on_order_id"

  create_table "order_attachments", force: true do |t|
    t.integer  "order_id"
    t.string   "document"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "contract_number"
    t.integer  "customer_id"
    t.text     "request_destination"
    t.date     "delivery_date"
    t.text     "status"
    t.text     "web_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_users", id: false, force: true do |t|
    t.integer "order_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "orders_users", ["order_id"], name: "index_orders_users_on_order_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
