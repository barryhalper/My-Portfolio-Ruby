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

ActiveRecord::Schema.define(version: 2020_10_20_133716) do

  create_table "abouts", force: :cascade do |t|
    t.string "desc"
    t.integer "order"
    t.string "about_type"
  end

  create_table "articles", force: :cascade do |t|
    t.text_basic "content"
    t.string "image"
    t.string "link"
    t.string "summary"
    t.datetime "published"
    t.string "rssguidid"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assoc_media", force: :cascade do |t|
    t.string "category"
    t.string "url"
    t.string "file"
    t.integer "order"
    t.bigint "project_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.string "message"
  end

  create_table "course", id: false, force: :cascade do |t|
    t.varchar "_id", limit: 50
    t.varchar "Title", limit: 50
    t.varchar "Year", limit: 50
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.integer "year"
  end

  create_table "educations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "media", force: :cascade do |t|
    t.string "category"
    t.string "url"
    t.string "file"
    t.integer "order"
    t.bigint "project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order"
    t.string "content"
    t.string "desc"
    t.string "name"
  end

  create_table "resources", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_id"
    t.string "category"
    t.string "file"
    t.string "order"
    t.string "url"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "image"
    t.string "skills_type"
    t.boolean "home"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order"
  end

  create_table "testimonial", id: false, force: :cascade do |t|
    t.varchar "_id", limit: 50
    t.varchar "Recommendation", limit: 50
    t.varchar "Author", limit: 50
    t.varchar "Position", limit: 50
    t.varchar "Image", limit: 50
    t.varchar "Order", limit: 50
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "recommendation"
    t.string "author"
    t.string "position"
    t.integer "order"
    t.string "image"
  end

end
