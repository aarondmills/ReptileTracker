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

ActiveRecord::Schema.define(:version => 20110626234200) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer   "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string    "email",                                 :default => "", :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "firstname"
    t.string    "lastname"
    t.string    "phone"
    t.string    "twitter"
    t.string    "facebook"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "animals", :force => true do |t|
    t.string    "name"
    t.string    "birthdate"
    t.string    "birth_weight"
    t.string    "length"
    t.string    "birth_location"
    t.string    "breeder_name"
    t.string    "breeder_email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "species_id"
    t.integer   "breed_id"
  end

  create_table "breeds", :force => true do |t|
    t.string    "name"
    t.string    "description"
    t.string    "species_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "cleanings", :force => true do |t|
    t.string    "date"
    t.boolean   "fresh_water"
    t.boolean   "fresh_bedding"
    t.boolean   "heat_check"
    t.boolean   "handled_animal"
    t.text      "notes"
    t.integer   "animal_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "feedings", :force => true do |t|
    t.string    "date"
    t.boolean   "successful"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "description"
    t.integer   "animal_id"
  end

  create_table "inspections", :force => true do |t|
    t.string    "date"
    t.integer   "animal_id"
    t.string    "length"
    t.string    "weight"
    t.boolean   "disease"
    t.string    "temperment"
    t.boolean   "mouth"
    t.boolean   "vent"
    t.boolean   "eyes"
    t.string    "belly"
    t.text      "outcome"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "enclosure_temperature"
    t.string    "hotspot_temperature"
    t.boolean   "fecies"
    t.string    "water"
  end

  create_table "markets", :force => true do |t|
    t.integer   "species_id"
    t.integer   "year"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "breed_id"
  end

  create_table "parent_relationships", :force => true do |t|
    t.integer   "parent_id"
    t.integer   "child_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.integer  "breed_id"
    t.integer  "quarterly_report_id"
    t.float    "price"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.date     "date"
  end

  create_table "quarterly_reports", :force => true do |t|
    t.integer   "market_id"
    t.string    "name"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "sheds", :force => true do |t|
    t.string    "date"
    t.string    "description"
    t.boolean   "full_shed"
    t.string    "length"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "animal_id"
  end

  create_table "species", :force => true do |t|
    t.string    "name"
    t.string    "latin_name"
    t.integer   "suborder_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
