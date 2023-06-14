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

ActiveRecord::Schema[7.0].define(version: 2023_06_14_165125) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_versions", force: :cascade do |t|
    t.string "support_level", limit: 40, default: "0"
    t.string "rating", limit: 40, default: "0"
    t.string "billing_strategy", limit: 40, default: "0"
    t.string "billing_provider", default: "0"
    t.string "currency"
    t.string "language"
    t.boolean "two_fa_active"
    t.boolean "sso_active"
    t.string "promo_code"
    t.string "primary_contact"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.string "name"
    t.index ["customer_id"], name: "index_customer_versions_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "support_level", limit: 40, default: "0"
    t.string "rating", limit: 40, default: "0"
    t.string "billing_strategy", limit: 40, default: "0"
    t.string "billing_provider", default: "0"
    t.string "currency"
    t.string "language"
    t.boolean "two_fa_active"
    t.boolean "sso_active"
    t.string "promo_code"
    t.string "primary_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  add_foreign_key "customer_versions", "customers"
end
