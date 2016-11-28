ActiveRecord::Schema.define(version: 20161123230531) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "user_id"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
