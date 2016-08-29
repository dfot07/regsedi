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

ActiveRecord::Schema.define(version: 20160829031915) do

  create_table "acts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "descripcion"
    t.string   "especificacion"
    t.string   "tipo"
    t.string   "libro"
    t.string   "repertorio"
    t.datetime "fecha_repertorio"
    t.string   "inscripcion"
    t.datetime "fecha_inscripcion"
    t.string   "cuantia"
    t.string   "unidad"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_acts_on_user_id"
  end

  create_table "appearers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "act_id"
    t.string   "tipo_persona"
    t.string   "razon_social"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "tipo_interviniente"
    t.string   "calidad_compareciente"
    t.string   "tipo_identificacion"
    t.string   "identificacion"
    t.string   "estado_civil"
    t.string   "apellido_conyuge"
    t.string   "identificacion_conyuge"
    t.string   "separacion_bien"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["act_id"], name: "index_appearers_on_act_id"
    t.index ["user_id"], name: "index_appearers_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "act_id"
    t.string   "numero_predio"
    t.string   "clave_catastral"
    t.string   "descripcion"
    t.string   "provincia"
    t.string   "zona"
    t.string   "superficie"
    t.string   "ubicacion"
    t.text     "lindero"
    t.string   "parroquia"
    t.string   "canton"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["act_id"], name: "index_properties_on_act_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
