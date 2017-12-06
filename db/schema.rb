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

ActiveRecord::Schema.define(version: 20171107163434) do

  create_table "administradors", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.integer "telefono"
    t.string "mail"
    t.integer "jer"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrendatarios", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.integer "telefono"
    t.string "mail"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.date "fechaInicio"
    t.date "fechaFin"
    t.integer "montoArriendo"
    t.string "documento"
    t.boolean "estado"
    t.integer "arrendatario_id"
    t.integer "administrador_id"
    t.integer "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrador_id"], name: "index_contratos_on_administrador_id"
    t.index ["arrendatario_id"], name: "index_contratos_on_arrendatario_id"
    t.index ["local_id"], name: "index_contratos_on_local_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.integer "nBoleta"
    t.integer "estado"
    t.boolean "firmaAdmin"
    t.boolean "firmaArrendatario"
    t.date "fechaPago"
    t.string "tipoPago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gastos", force: :cascade do |t|
    t.integer "tipo"
    t.string "nombre"
    t.text "comentario"
    t.integer "local_id"
    t.integer "factura_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factura_id"], name: "index_gastos_on_factura_id"
    t.index ["local_id"], name: "index_gastos_on_local_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "direccion"
    t.integer "numero"
    t.text "comentarios"
    t.boolean "estadoArriendo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mes_garantia", force: :cascade do |t|
    t.date "fecha"
    t.integer "monto"
    t.integer "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_mes_garantia_on_local_id"
  end

end
