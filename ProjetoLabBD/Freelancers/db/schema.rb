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

ActiveRecord::Schema.define(version: 20161201023641) do

  create_table "certificates", force: :cascade do |t|
    t.string   "knowledge_name"
    t.string   "freelancer_login"
    t.string   "certificate_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "login"
    t.string   "company_cnpj"
    t.string   "role"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "followers", force: :cascade do |t|
    t.string   "follower_login"
    t.string   "followed_login"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "freelancer_knowledges", force: :cascade do |t|
    t.string   "freelancer_login"
    t.string   "knowledge_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "freelancers", force: :cascade do |t|
    t.string   "login"
    t.decimal  "average_score"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "issue_id"
    t.string   "creator"
    t.string   "description"
    t.string   "category"
    t.string   "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "knowledges", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "service_code"
    t.string   "freelancer_login"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "required_knowledges", force: :cascade do |t|
    t.string   "knowledge_name"
    t.integer  "service_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "contractor_login"
    t.integer  "service_code"
    t.integer  "solution_id"
    t.string   "service_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "status"
    t.decimal  "price"
    t.decimal  "final_score"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.integer  "solution_id"
    t.string   "creator"
    t.integer  "problem_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "name"
    t.string   "cpf"
    t.integer  "age"
    t.string   "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
