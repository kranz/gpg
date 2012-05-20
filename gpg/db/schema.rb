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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120115205559) do

  create_table "accounts", :force => true do |t|
    t.string   "codmastro"
    t.string   "mastro"
    t.string   "codconto"
    t.string   "conto"
    t.string   "codsottoconto"
    t.string   "sottoconto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fullcode"
  end

  create_table "business_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contract_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "esattore_id"
    t.integer  "account_id"
    t.integer  "business_type_id"
    t.string   "number"
    t.date     "date"
    t.boolean  "block_flag"
    t.date     "blocked_at"
    t.date     "unblocked_at"
    t.integer  "invoicing_freq"
    t.string   "invoicing_months"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customer_name"
    t.integer  "contract_type_id"
    t.integer  "initial_month"
    t.string   "description"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "vatcode"
    t.string   "fiscalcode"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "fiscalcode"
    t.date     "birthdate"
    t.date     "enrolldate"
    t.date     "leavedate"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email"
    t.string   "phone_number"
  end

  create_table "esattori", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "tipo"
    t.string   "tipo_indennita"
    t.integer  "valore_indennita"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "zip"
    t.string   "comune"
    t.string   "provincia"
    t.string   "numero_civico"
    t.string   "estensione_civico"
    t.string   "numero_interno"
    t.string   "estensione_interno"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "service_locations", :force => true do |t|
    t.integer  "location_id"
    t.integer  "contract_id"
    t.integer  "sequence"
    t.boolean  "sort_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "zones", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
