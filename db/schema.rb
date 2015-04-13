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

ActiveRecord::Schema.define(version: 20150413003322) do

  create_table "armors", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "name",       limit: 255
    t.string   "character",  limit: 255
    t.integer  "defense",    limit: 4
    t.integer  "damage",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "attacks", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "name",       limit: 255
    t.integer  "damage",     limit: 4
    t.integer  "weapon_id",  limit: 4
    t.string   "character",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "attacks", ["weapon_id"], name: "index_attacks_on_weapon_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "type",           limit: 255
    t.integer  "age",            limit: 4
    t.integer  "vitality",       limit: 4
    t.integer  "life_points",    limit: 4
    t.integer  "weapon_id",      limit: 4
    t.integer  "armor_id",       limit: 4
    t.string   "skill",          limit: 255
    t.integer  "level",          limit: 4
    t.integer  "defense_points", limit: 4
    t.integer  "attack_points",  limit: 4
    t.text     "attacks",        limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "characters", ["armor_id"], name: "index_characters_on_armor_id", using: :btree
  add_index "characters", ["weapon_id"], name: "index_characters_on_weapon_id", using: :btree

  create_table "weapons", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "name",       limit: 255
    t.integer  "damage",     limit: 4
    t.integer  "defense",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "attacks", "weapons"
  add_foreign_key "characters", "armors"
  add_foreign_key "characters", "weapons"
end
