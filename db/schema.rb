# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150706184203) do

  create_table "questions", force: true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requi_answers", force: true do |t|
    t.integer  "requisition_id"
    t.integer  "requi_question_id"
    t.integer  "question_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requi_answers", ["question_id"], name: "index_requi_answers_on_question_id"
  add_index "requi_answers", ["requi_question_id"], name: "index_requi_answers_on_requi_question_id"
  add_index "requi_answers", ["requisition_id"], name: "index_requi_answers_on_requisition_id"

  create_table "requi_questions", force: true do |t|
    t.integer  "requisition_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requi_questions", ["question_id"], name: "index_requi_questions_on_question_id"
  add_index "requi_questions", ["requisition_id"], name: "index_requi_questions_on_requisition_id"

  create_table "requisitions", force: true do |t|
    t.string   "vendor"
    t.string   "purchaser"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_type"
  end

  create_table "trans_answers", force: true do |t|
    t.integer  "transaction_id"
    t.integer  "trans_question_id"
    t.integer  "question_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trans_answers", ["question_id"], name: "index_trans_answers_on_question_id"
  add_index "trans_answers", ["trans_question_id"], name: "index_trans_answers_on_trans_question_id"
  add_index "trans_answers", ["transaction_id"], name: "index_trans_answers_on_transaction_id"

  create_table "trans_questions", force: true do |t|
    t.integer  "transaction_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trans_questions", ["question_id"], name: "index_trans_questions_on_question_id"
  add_index "trans_questions", ["transaction_id"], name: "index_trans_questions_on_transaction_id"

  create_table "transactions", force: true do |t|
    t.string   "vendor"
    t.string   "purchaser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
