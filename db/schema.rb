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

ActiveRecord::Schema.define(version: 20181112203019) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "charges", force: :cascade do |t|
    t.string "email"
    t.string "razorpay_payment_id"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customs", force: :cascade do |t|
    t.string "wood"
    t.string "polish"
    t.string "cimage"
    t.string "dimension"
    t.text "info"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interiors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "order_itemtwos", force: :cascade do |t|
    t.integer "order_id"
    t.integer "bookcabinet_id"
    t.integer "quantitytwo", null: false
    t.decimal "pricetwo", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookcabinet_id"], name: "index_order_itemtwos_on_bookcabinet_id"
    t.index ["order_id"], name: "index_order_itemtwos_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_number"
    t.string "email"
    t.string "city"
    t.string "pincode"
    t.string "delivery_address"
    t.string "tracking"
    t.decimal "sub_total", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.string "token"
    t.string "status", default: "cart"
    t.index ["order_id"], name: "index_orders_on_order_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "sdescription"
    t.string "image"
    t.string "previewo"
    t.string "previewt"
    t.string "previewth"
    t.integer "price"
    t.integer "offerprice"
    t.string "coupon"
    t.string "brand"
    t.string "color"
    t.string "warrenty"
    t.string "material"
    t.string "saving"
    t.string "off"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.string "dimension"
    t.string "category"
    t.string "deliveryd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "full_name"
    t.string "mobile_number"
    t.string "verification_code"
    t.boolean "is_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
