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

ActiveRecord::Schema.define(version: 20160225195157) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "activity_sensor_events", force: :cascade do |t|
    t.integer  "activity_sensor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "activity_sensors", force: :cascade do |t|
    t.string   "name"
    t.string   "mqtt_topic"
    t.boolean  "is_internal"
    t.boolean  "is_enabled"
    t.string   "active_payload"
    t.string   "quiet_payload"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "door_sensor_events", force: :cascade do |t|
    t.boolean  "curr_open"
    t.integer  "door_sensor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "door_sensors", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_entry"
    t.boolean  "is_enabled"
    t.string   "mqtt_topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "global_states", force: :cascade do |t|
    t.boolean  "armed"
    t.datetime "last_armed"
    t.datetime "last_disarmed"
    t.boolean  "arming"
    t.boolean  "delayed_entry"
    t.datetime "last_delayed_entry"
    t.boolean  "silent_egress_ingress"
    t.boolean  "bedtime_mode"
    t.datetime "last_authentication"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
