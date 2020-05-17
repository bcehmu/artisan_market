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

ActiveRecord::Schema.define(version: 2020_05_17_122302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "email"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prefered_frequency"
    t.string "name"
    t.string "description"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "luthier_id", null: false
    t.bigint "musician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["luthier_id"], name: "index_invitations_on_luthier_id"
    t.index ["musician_id"], name: "index_invitations_on_musician_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "luthiers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_luthiers_on_user_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "musician_id", null: false
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["musician_id"], name: "index_media_on_musician_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_musicians_on_user_id"
  end

  create_table "pending_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "cause"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.index ["user_id"], name: "index_pending_users_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.bigint "luthier_id", null: false
    t.integer "base_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["luthier_id"], name: "index_products_on_luthier_id"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "subscribe_luthiers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "luthier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["luthier_id"], name: "index_subscribe_luthiers_on_luthier_id"
    t.index ["user_id"], name: "index_subscribe_luthiers_on_user_id"
  end

  create_table "subscribe_media", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "medium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medium_id"], name: "index_subscribe_media_on_medium_id"
    t.index ["user_id"], name: "index_subscribe_media_on_user_id"
  end

  create_table "subscribe_musicians", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "musician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["musician_id"], name: "index_subscribe_musicians_on_musician_id"
    t.index ["user_id"], name: "index_subscribe_musicians_on_user_id"
  end

  create_table "subscribe_products", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_subscribe_products_on_product_id"
    t.index ["user_id"], name: "index_subscribe_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "contacts", "users"
  add_foreign_key "invitations", "luthiers"
  add_foreign_key "invitations", "musicians"
  add_foreign_key "invitations", "users"
  add_foreign_key "luthiers", "users"
  add_foreign_key "media", "musicians"
  add_foreign_key "musicians", "users"
  add_foreign_key "pending_users", "users"
  add_foreign_key "products", "luthiers"
  add_foreign_key "subscribe_luthiers", "luthiers"
  add_foreign_key "subscribe_luthiers", "users"
  add_foreign_key "subscribe_media", "media"
  add_foreign_key "subscribe_media", "users"
  add_foreign_key "subscribe_musicians", "musicians"
  add_foreign_key "subscribe_musicians", "users"
  add_foreign_key "subscribe_products", "products"
  add_foreign_key "subscribe_products", "users"
end
