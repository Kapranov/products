ActiveRecord::Schema.define(version: 2) do

  create_table "bonus_codes", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "bonus_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bonus_codes", ["product_id"], name: "index_bonus_codes_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "bonus_codes"
    t.string   "status"
    t.string   "service"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
