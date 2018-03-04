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

ActiveRecord::Schema.define(version: 20180304045038) do

  create_table "devtools", force: :cascade do |t|
    t.text "icon"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "imgr"
    t.integer "user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "plinks"
    t.boolean "build_one"
    t.boolean "build_two"
    t.boolean "build_three"
    t.boolean "build_four"
    t.boolean "build_five"
    t.boolean "build_six"
    t.boolean "build_seven"
    t.boolean "build_eight"
    t.boolean "build_nine"
    t.boolean "build_ten"
    t.boolean "build_eleven"
    t.boolean "build_twelve"
    t.boolean "build_thirteen"
    t.boolean "build_fourteen"
    t.boolean "build_fifthteen"
    t.boolean "build_sixteen"
    t.boolean "build_seventeen"
    t.boolean "build_eighteen"
    t.boolean "build_nineteen"
    t.boolean "build_twentee"
    t.boolean "build_twenteeone"
    t.boolean "build_twenteetwo"
    t.boolean "build_twenteethree"
    t.boolean "build_twenteefour"
    t.boolean "build_twenteefive"
    t.boolean "build_twenteesix"
    t.boolean "build_twenteeseven"
    t.boolean "build_twentyeight"
    t.boolean "build_twentynine"
    t.boolean "build_thrity"
    t.boolean "build_thirtyone"
    t.boolean "build_thirtytwo"
    t.boolean "build_thirtythree"
    t.boolean "build_thirtyfour"
    t.boolean "build_thirtyfive"
    t.boolean "build_thirtysix"
    t.boolean "build_thirtyseven"
    t.boolean "build_thirtyeight"
    t.boolean "build_thirtynine"
    t.boolean "build_fourty"
    t.string "mockup"
    t.string "accountm"
    t.string "developer"
    t.string "designer"
    t.text "devlink"
    t.string "activebuild"
    t.string "launched"
    t.string "inactive"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
