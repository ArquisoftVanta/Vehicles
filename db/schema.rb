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

ActiveRecord::Schema.define(version: 20210403212659) do

  create_table "vehicles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "vehicle_id"
    t.integer  "owner"
    t.string   "license_plate"
    t.integer  "vehicle_type"
    t.string   "model"
    t.integer  "year"
    t.string   "color"
    t.datetime "registry"
    t.string   "picture"
    t.integer  "capacity"
    t.string   "brand"
    t.string   "service_type"
    t.string   "body"
    t.date     "soat_exp"
    t.integer  "engine"
    t.string   "gas_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
