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

ActiveRecord::Schema.define(version: 20191128210518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_title"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postal_code"
    t.string "country"
    t.string "phone"
    t.string "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.string "title_of_courtesy"
    t.date "birthdate"
    t.date "hiredate"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postal_code"
    t.string "country"
    t.string "homephone"
    t.string "extension"
    t.text "notes"
    t.string "reports_to"
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.decimal "unit_price"
    t.integer "quantity"
    t.decimal "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_id"
    t.date "order_date"
    t.date "required_date"
    t.date "shipped_date"
    t.decimal "freight"
    t.string "ship_name"
    t.string "ship_address"
    t.string "ship_city"
    t.string "ship_region"
    t.string "ship_postalcode"
    t.string "ship_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "supplier_id"
    t.string "product_name"
    t.integer "quantity_per_unit"
    t.decimal "unit_price"
    t.integer "units_in_stock"
    t.integer "units_on_order"
    t.integer "reorder_level"
    t.boolean "discontinued"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "shippers", force: :cascade do |t|
    t.string "company_name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postal_code"
    t.string "country"
    t.string "phone"
    t.string "fax"
    t.string "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
