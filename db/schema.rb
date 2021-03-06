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

ActiveRecord::Schema.define(version: 20180115112514) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 80
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes_restaurants", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "dish_id", null: false
    t.bigint "restaurant_id", null: false
    t.index ["dish_id", "restaurant_id"], name: "index_dishes_restaurants_on_dish_id_and_restaurant_id"
  end

  create_table "qualifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "score", limit: 24, null: false
    t.float "amount_spent", limit: 24
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_qualifications_on_customer_id"
    t.index ["restaurant_id"], name: "index_qualifications_on_restaurant_id"
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dish_id"
    t.index ["dish_id"], name: "index_recipes_on_dish_id"
  end

  create_table "restaurants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 80, null: false
    t.string "address", limit: 150, null: false
    t.string "specialty", limit: 80
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "qualifications", "customers"
  add_foreign_key "qualifications", "restaurants"
  add_foreign_key "recipes", "dishes"
end
