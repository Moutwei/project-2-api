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

ActiveRecord::Schema.define(version: 2019_10_21_150027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "task"
    t.string "task_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "project_id"
    t.index ["project_id"], name: "index_employees_on_project_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "leaders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "skills"
    t.integer "completed_projects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_leaders_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "task"
    t.string "task_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "user_id"
    t.index ["project_id"], name: "index_members_on_project_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "mission"
    t.date "target"
    t.string "requirements"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "leader_id"
    t.bigint "user_id"
    t.index ["leader_id"], name: "index_projects_on_leader_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "employees", "projects"
  add_foreign_key "employees", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "leaders", "users"
  add_foreign_key "members", "projects"
  add_foreign_key "members", "users"
  add_foreign_key "projects", "leaders"
  add_foreign_key "projects", "users"
end
