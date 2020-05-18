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

ActiveRecord::Schema.define(version: 2020_05_18_203939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forest_base_blocks", id: :serial, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forest_block_kinds", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "record_type"
    t.index ["category"], name: "index_forest_block_kinds_on_category"
    t.index ["name"], name: "index_forest_block_kinds_on_name", unique: true
    t.index ["record_type"], name: "index_forest_block_kinds_on_record_type"
  end

  create_table "forest_block_layouts", force: :cascade do |t|
    t.string "slug"
    t.string "display_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_forest_block_layouts_on_slug", unique: true
  end

  create_table "forest_block_slots", id: :serial, force: :cascade do |t|
    t.string "forest_block_type"
    t.integer "forest_block_id"
    t.integer "forest_block_kind_id"
    t.string "forest_block_record_type"
    t.integer "forest_block_record_id"
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "forest_block_layout_id"
    t.index ["forest_block_kind_id"], name: "index_forest_block_slots_on_forest_block_kind_id"
    t.index ["forest_block_layout_id"], name: "index_forest_block_slots_on_forest_block_layout_id"
    t.index ["forest_block_record_type", "forest_block_record_id"], name: "index_f_blck_slots_on_f_blck_record_type_and_f_blck_record_id"
    t.index ["forest_block_type", "forest_block_id"], name: "index_frst_block_slots_on_frst_block_type_and_frst_block_id"
  end

  create_table "forest_media_items", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "caption"
    t.string "alternative_text"
    t.text "description"
    t.text "dimensions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "media_item_status", default: 0
    t.index ["created_at"], name: "index_forest_media_items_on_created_at"
    t.index ["media_item_status"], name: "index_forest_media_items_on_media_item_status"
    t.index ["slug"], name: "index_forest_media_items_on_slug", unique: true
  end

  create_table "forest_menus", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "structure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_forest_menus_on_slug", unique: true
  end

  create_table "forest_pages", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "path"
    t.integer "status", default: 1, null: false
    t.datetime "scheduled_date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "featured_image_id"
    t.integer "parent_page_id"
    t.string "redirect"
    t.jsonb "blockable_metadata", default: {}
    t.string "seo_title"
    t.index ["blockable_metadata"], name: "index_forest_pages_on_blockable_metadata", using: :gin
    t.index ["featured_image_id"], name: "index_forest_pages_on_featured_image_id"
    t.index ["parent_page_id"], name: "index_forest_pages_on_parent_page_id"
    t.index ["path"], name: "index_forest_pages_on_path", unique: true
    t.index ["slug"], name: "index_forest_pages_on_slug"
    t.index ["status"], name: "index_forest_pages_on_status"
  end

  create_table "forest_settings", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "value"
    t.text "description"
    t.string "value_type", default: "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale"
    t.index ["locale", "slug"], name: "index_forest_settings_on_locale_and_slug", unique: true
    t.index ["locale"], name: "index_forest_settings_on_locale"
  end

  create_table "forest_user_groups", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_forest_user_groups_on_name", unique: true
  end

  create_table "forest_user_groups_users", id: false, force: :cascade do |t|
    t.integer "forest_user_group_id", null: false
    t.integer "forest_user_id", null: false
    t.index ["forest_user_group_id", "forest_user_id"], name: "index_frst_user_grps_users_on_frst_user_grp_id_and_frst_user_id"
    t.index ["forest_user_id", "forest_user_group_id"], name: "index_frst_user_grps_users_on_frst_user_id_and_frst_user_grp_id"
  end

  create_table "forest_users", id: :serial, force: :cascade do |t|
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
    t.string "first_name"
    t.string "last_name"
    t.string "slug"
    t.text "settings", default: "{}", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_forest_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_forest_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_forest_users_on_slug", unique: true
  end

  add_foreign_key "forest_block_slots", "forest_block_kinds"
  add_foreign_key "forest_block_slots", "forest_block_layouts"
end
