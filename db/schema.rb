# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_03_193900) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devise_api_tokens", force: :cascade do |t|
    t.string "resource_owner_type", null: false
    t.bigint "resource_owner_id", null: false
    t.string "access_token", null: false
    t.string "refresh_token"
    t.integer "expires_in", null: false
    t.datetime "revoked_at"
    t.string "previous_refresh_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token"], name: "index_devise_api_tokens_on_access_token"
    t.index ["previous_refresh_token"], name: "index_devise_api_tokens_on_previous_refresh_token"
    t.index ["refresh_token"], name: "index_devise_api_tokens_on_refresh_token"
    t.index ["resource_owner_type", "resource_owner_id"], name: "index_devise_api_tokens_on_resource_owner"
  end

  create_table "motors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.string "brand_name"
    t.integer "model_no"
    t.string "manufacturer"
    t.date "manufacture_date"
    t.text "description"
    t.string "photo"
    t.float "unit_price"
    t.float "purchase_fee"
    t.float "finance_fee"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_name"], name: "index_motors_on_brand_name"
    t.index ["id"], name: "index_motors_on_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "motor_id"
    t.date "reserve_date"
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_name"], name: "index_reservations_on_city_name"
    t.index ["motor_id"], name: "index_reservations_on_motor_id"
  end

  create_table "store_locations", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_name"], name: "index_store_locations_on_city_name"
    t.index ["id"], name: "index_store_locations_on_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["id"], name: "index_users_on_id"
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

  add_foreign_key "motors", "store_locations", column: "location_id"
  add_foreign_key "motors", "users"
  add_foreign_key "reservations", "motors"
  add_foreign_key "reservations", "users"
end
