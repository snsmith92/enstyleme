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

ActiveRecord::Schema.define(version: 20180726133326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "availabilities", force: :cascade do |t|
    t.string   "time_zone"
    t.time     "day_start"
    t.time     "day_end"
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "day"
    t.index ["user_id", "vendor_id"], name: "index_availabilities_on_user_id_and_vendor_id", using: :btree
    t.index ["vendor_id"], name: "index_availabilities_on_vendor_id", using: :btree
  end

  create_table "booking_items", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "booking_id"
    t.decimal  "price",      precision: 6, scale: 2
    t.string   "cost_range"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "client_id"
    t.integer  "vendor_id"
    t.index ["booking_id"], name: "index_booking_items_on_booking_id", using: :btree
    t.index ["client_id", "vendor_id"], name: "index_booking_items_on_client_id_and_vendor_id", using: :btree
    t.index ["client_id"], name: "index_booking_items_on_client_id", using: :btree
    t.index ["service_id"], name: "index_booking_items_on_service_id", using: :btree
    t.index ["vendor_id"], name: "index_booking_items_on_vendor_id", using: :btree
  end

  create_table "booking_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "client_name"
    t.string   "phone"
    t.text     "notes"
    t.integer  "total_duration"
    t.decimal  "total_price",       precision: 6, scale: 2
    t.integer  "vendor_id"
    t.integer  "client_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "booking_status_id"
    t.index ["booking_status_id"], name: "index_bookings_on_booking_status_id", using: :btree
    t.index ["client_id", "vendor_id"], name: "index_bookings_on_client_id_and_vendor_id", using: :btree
    t.index ["client_id"], name: "index_bookings_on_client_id", using: :btree
    t.index ["vendor_id"], name: "index_bookings_on_vendor_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_clients_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hours"
    t.integer  "minutes"
    t.decimal  "cost_absolute", precision: 6, scale: 2
    t.string   "cost_range"
    t.integer  "vendor_id"
    t.integer  "user_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "active"
    t.index ["user_id", "vendor_id"], name: "index_services_on_user_id_and_vendor_id", using: :btree
    t.index ["vendor_id"], name: "index_services_on_vendor_id", using: :btree
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_taggings_on_service_id", using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unavailabilities", force: :cascade do |t|
    t.integer  "day"
    t.time     "break_start"
    t.time     "break_end"
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id", "vendor_id"], name: "index_unavailabilities_on_user_id_and_vendor_id", using: :btree
    t.index ["vendor_id"], name: "index_unavailabilities_on_vendor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vacations", force: :cascade do |t|
    t.datetime "vacation_start"
    t.datetime "vacation_end"
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id", "vendor_id"], name: "index_vacations_on_user_id_and_vendor_id", using: :btree
    t.index ["vendor_id"], name: "index_vacations_on_vendor_id", using: :btree
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.string   "address"
    t.string   "zip"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "user_id"
    t.boolean  "consent"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "facebook"
    t.string   "website"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "category_id"
    t.string   "slug"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "profile_image"
    t.text     "description"
    t.index ["category_id"], name: "index_vendors_on_category_id", using: :btree
    t.index ["city"], name: "index_vendors_on_city", using: :btree
    t.index ["country"], name: "index_vendors_on_country", using: :btree
    t.index ["user_id"], name: "index_vendors_on_user_id", using: :btree
  end

  add_foreign_key "booking_items", "bookings"
  add_foreign_key "booking_items", "services"
  add_foreign_key "taggings", "services"
  add_foreign_key "taggings", "tags"
  add_foreign_key "vendors", "categories"
end
