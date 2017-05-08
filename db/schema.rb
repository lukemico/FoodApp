
ActiveRecord::Schema.define(version: 20170502110542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string   "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.text     "title"
    t.text     "tagline"
    t.text     "copy"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "input"
    t.text     "name"
    t.integer  "blog_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guides", force: :cascade do |t|
    t.text     "category"
    t.text     "location"
    t.text     "cuisine"
    t.integer  "price"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "surname"
    t.text     "email"
    t.string   "password_digest"
    t.integer  "guide_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "category"
    t.string   "text"
    t.text     "venue"
    t.text     "address"
    t.text     "suburb"
    t.integer  "phone"
    t.text     "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
