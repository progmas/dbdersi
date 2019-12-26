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

ActiveRecord::Schema.define(version: 2019_12_26_084823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.integer "work_type"
    t.bigint "position_id", null: false
    t.bigint "sector_id", null: false
    t.bigint "city_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_advertisements_on_city_id"
    t.index ["country_id"], name: "index_advertisements_on_country_id"
    t.index ["position_id"], name: "index_advertisements_on_position_id"
    t.index ["sector_id"], name: "index_advertisements_on_sector_id"
  end

  create_table "applications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.bigint "advertisement_id", null: false
    t.boolean "archive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advertisement_id"], name: "index_applications_on_advertisement_id"
    t.index ["company_id"], name: "index_applications_on_company_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "company_department_locations", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "department_id", null: false
    t.bigint "city_id", null: false
    t.bigint "country_id", null: false
    t.bigint "sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_company_department_locations_on_city_id"
    t.index ["company_id"], name: "index_company_department_locations_on_company_id"
    t.index ["country_id"], name: "index_company_department_locations_on_country_id"
    t.index ["department_id"], name: "index_company_department_locations_on_department_id"
    t.index ["sector_id"], name: "index_company_department_locations_on_sector_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "credit"
    t.integer "section"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
  end

  create_table "employee_companies", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_employee_companies_on_company_id"
    t.index ["employee_id"], name: "index_employee_companies_on_employee_id"
  end

# Could not dump table "employees" because of following StandardError
#   Unknown type 'work_type' for column 'work_type'

  create_table "follows", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_follows_on_company_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "friends", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "other_user_id", null: false
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_user_id"], name: "index_friends_on_other_user_id"
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "instructor_courses", force: :cascade do |t|
    t.bigint "instructor_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_instructor_courses_on_course_id"
    t.index ["instructor_id"], name: "index_instructor_courses_on_instructor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_instructors_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "other_user_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_user_id"], name: "index_messages_on_other_user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content"
    t.boolean "is_seen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.integer "kind"
    t.date "date_at"
    t.bigint "sector_id", null: false
    t.string "title"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_posts_on_company_id"
    t.index ["sector_id"], name: "index_posts_on_sector_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "birthdate"
    t.string "gender"
    t.bigint "city_id", null: false
    t.bigint "country_id", null: false
    t.string "skills"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_profiles_on_city_id"
    t.index ["country_id"], name: "index_profiles_on_country_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "user_schools", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_user_schools_on_school_id"
    t.index ["user_id"], name: "index_user_schools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
  end

  create_table "work_experiences", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.date "start"
    t.date "end"
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_work_experiences_on_company_id"
    t.index ["user_id"], name: "index_work_experiences_on_user_id"
  end

  add_foreign_key "advertisements", "cities"
  add_foreign_key "advertisements", "countries"
  add_foreign_key "advertisements", "positions"
  add_foreign_key "advertisements", "sectors"
  add_foreign_key "applications", "advertisements"
  add_foreign_key "applications", "companies"
  add_foreign_key "applications", "users"
  add_foreign_key "company_department_locations", "cities"
  add_foreign_key "company_department_locations", "companies"
  add_foreign_key "company_department_locations", "countries"
  add_foreign_key "company_department_locations", "departments"
  add_foreign_key "company_department_locations", "sectors"
  add_foreign_key "employee_companies", "companies"
  add_foreign_key "employee_companies", "employees"
  add_foreign_key "employees", "users"
  add_foreign_key "follows", "companies"
  add_foreign_key "follows", "users"
  add_foreign_key "friends", "users"
  add_foreign_key "friends", "users", column: "other_user_id"
  add_foreign_key "instructor_courses", "courses"
  add_foreign_key "instructor_courses", "instructors"
  add_foreign_key "instructors", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "messages", "users", column: "other_user_id"
  add_foreign_key "notifications", "users"
  add_foreign_key "posts", "companies"
  add_foreign_key "posts", "sectors"
  add_foreign_key "profiles", "cities"
  add_foreign_key "profiles", "countries"
  add_foreign_key "profiles", "users"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "students", "users"
  add_foreign_key "user_schools", "schools"
  add_foreign_key "user_schools", "users"
  add_foreign_key "work_experiences", "companies"
  add_foreign_key "work_experiences", "users"
end
