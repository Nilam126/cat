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

ActiveRecord::Schema.define(version: 2021_02_01_122919) do

  create_table "attendace3s", force: :cascade do |t|
    t.integer "employeeid"
    t.string "employeename"
    t.date "date"
    t.time "intime"
    t.time "outtime"
    t.string "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attendance1s", force: :cascade do |t|
    t.date "attendance_date"
    t.time "in_time"
    t.time "out_time"
    t.string "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee1_id", null: false
    t.index ["employee1_id"], name: "index_attendance1s_on_employee1_id"
  end

  create_table "attendance2s", force: :cascade do |t|
    t.date "attendance_date"
    t.time "in_time"
    t.time "out_time"
    t.string "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee2_id"
    t.index ["employee2_id"], name: "index_attendance2s_on_employee2_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.date "attendance_date"
    t.time "in_time"
    t.time "out_time"
    t.string "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_attendances_on_employee_id"
  end

  
  create_table "employee2s", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.float "salary"
    t.string "gender"
    t.bigint "contact"
    t.string "email"
    t.string "country"
    t.string "city"
    t.integer "pincode"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_employee2s_on_email", unique: true
  end

  
  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "gender"
    t.bigint "contact"
    t.string "city"
    t.string "address"
    t.string "password_digest"
    t.integer "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attendance1s", "employee1s"
end
