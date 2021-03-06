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

ActiveRecord::Schema.define(version: 20180527165638) do

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "foto"
    t.string   "telefono"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "model"
    t.string   "color"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  create_table "viajes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.string   "description"
    t.time     "time_limit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["place_id"], name: "index_viajes_on_place_id"
    t.index ["user_id"], name: "index_viajes_on_user_id"
  end

end
