# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_03_212926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "budget"
    t.bigint "monthly_budget_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["monthly_budget_id"], name: "index_categories_on_monthly_budget_id"
  end

  create_table "monthly_budgets", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "month"
    t.integer "budget"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_monthly_budgets_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.boolean "type"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_transactions_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "categories", "monthly_budgets"
  add_foreign_key "monthly_budgets", "users"
  add_foreign_key "transactions", "categories"
end