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

ActiveRecord::Schema[7.0].define(version: 2022_08_17_011345) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "training_plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
    t.bigint "region_id"
    t.index ["region_id"], name: "index_courses_on_region_id"
    t.index ["training_plan_id"], name: "index_courses_on_training_plan_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_states_on_region_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "rut"
    t.string "name"
    t.string "last_name1"
    t.string "last_name2"
    t.string "address"
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["region_id"], name: "index_students_on_region_id"
  end

  create_table "training_plans", force: :cascade do |t|
    t.string "training_plan_code"
    t.text "description"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "regions"
  add_foreign_key "courses", "training_plans"
  add_foreign_key "states", "regions"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "regions"
end
