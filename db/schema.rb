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

ActiveRecord::Schema.define(version: 2020_06_15_004423) do

  create_table "accidents", force: :cascade do |t|
    t.string "which_accident"
    t.string "reporter"
    t.datetime "accident_datetime"
    t.string "accident_senior"
    t.string "accident_scene"
    t.integer "senior_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "accident_floor"
    t.datetime "accident_time"
    t.string "department"
    t.string "accident_worker"
    t.string "accident_place"
    t.string "active"
    t.integer "accident_result", default: 0
    t.string "accident_result_comment"
    t.integer "activity_scene"
    t.integer "event_classification"
    t.string "other_event"
    t.string "result_comment"
    t.string "measures_comment"
    t.string "change_measures"
    t.datetime "evaluation_date"
    t.string "evaluation_comment"
    t.integer "measures_result"
    t.string "superior_comment"
    t.datetime "reporting_date"
    t.datetime "last_reporting_date"
    t.string "superior_a"
    t.string "superior_b"
    t.string "superior_c"
    t.string "superior_d"
    t.string "charge_sign"
    t.string "family_comment"
    t.string "superior_a_last"
    t.string "superior_b_last"
    t.string "superior_c_last"
    t.string "superior_d_last"
    t.string "other_activity_scene"
    t.boolean "support_mistake"
    t.boolean "not_enough_skills"
    t.boolean "work_attitude"
    t.boolean "information_sharing_worker"
    t.boolean "not_enough_assessment"
    t.boolean "environment"
    t.boolean "poor_health"
    t.boolean "mental_instability"
    t.boolean "seizure"
    t.boolean "characteristic"
    t.boolean "aging"
    t.boolean "improved_support"
    t.boolean "understanding_seniors"
    t.boolean "well_known"
    t.boolean "manual_maintenance"
    t.boolean "information_sharing"
    t.boolean "worker_education"
    t.boolean "environmental_improvement"
    t.boolean "other"
    t.string "superior_e"
    t.string "superior_f"
    t.string "superior_e_last"
    t.string "superior_f_last"
    t.integer "facility_judge"
    t.index ["senior_id"], name: "index_accidents_on_senior_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "uid"
    t.string "provider"
    t.string "image"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.string "salt"
    t.string "google_secret"
    t.boolean "display", default: true
    t.boolean "authenticator_check", default: false
    t.boolean "account_delete"
    t.boolean "authenticator_request"
    t.index ["email"], name: "index_facilities_on_email", unique: true
  end

  create_table "senior_workers", force: :cascade do |t|
    t.integer "worker_id"
    t.integer "senior_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["senior_id"], name: "index_senior_workers_on_senior_id"
    t.index ["worker_id"], name: "index_senior_workers_on_worker_id"
  end

  create_table "seniors", force: :cascade do |t|
    t.string "senior_name"
    t.integer "floor"
    t.string "charge_worker"
    t.boolean "using_flg", default: true
    t.integer "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "senior_name_call"
    t.index ["facility_id"], name: "index_seniors_on_facility_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "worker_name"
    t.string "worker_name_call"
    t.string "sign_name"
    t.integer "working_floor"
    t.string "charge_senior"
    t.boolean "working_flg", default: true
    t.integer "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.index ["facility_id"], name: "index_workers_on_facility_id"
  end

  add_foreign_key "accidents", "seniors"
  add_foreign_key "senior_workers", "seniors"
  add_foreign_key "senior_workers", "workers"
  add_foreign_key "seniors", "facilities"
  add_foreign_key "workers", "facilities"
end
