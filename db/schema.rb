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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110624022735) do

  create_table "animals", :force => true do |t|
    t.string   "name"
    t.string   "birthdate"
    t.string   "birth_weight"
    t.string   "length"
    t.string   "birth_location"
    t.string   "breeder_name"
    t.string   "breeder_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breeds", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "species_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cleanings", :force => true do |t|
    t.string   "date"
    t.boolean  "fresh_water"
    t.boolean  "fresh_bedding"
    t.boolean  "heat_check"
    t.boolean  "handled_animal"
    t.text     "notes"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedings", :force => true do |t|
    t.string   "date"
    t.boolean  "successful"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "animal_id"
  end

  create_table "inspections", :force => true do |t|
    t.string   "date"
    t.integer  "animal_id"
    t.string   "length"
    t.string   "weight"
    t.boolean  "disease"
    t.string   "temperment"
    t.boolean  "mouth"
    t.boolean  "vent"
    t.boolean  "eyes"
    t.string   "belly"
    t.text     "outcome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "enclosure_temperature"
    t.string   "hotspot_temperature"
    t.boolean  "fecies"
    t.string   "water"
  end

  create_table "markets", :force => true do |t|
    t.integer  "species_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "breed_id"
  end

  create_table "parent_relationships", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.integer  "breed_id"
    t.integer  "quarterly_report_id"
    t.string   "date"
    t.float    "price"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quarterly_reports", :force => true do |t|
    t.integer  "market_id"
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sheds", :force => true do |t|
    t.string   "date"
    t.string   "description"
    t.boolean  "full_shed"
    t.string   "length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "animal_id"
  end

  create_table "species", :force => true do |t|
    t.string   "name"
    t.string   "latin_name"
    t.integer  "suborder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
