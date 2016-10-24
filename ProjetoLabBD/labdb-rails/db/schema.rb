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

ActiveRecord::Schema.define(version: 20161024001736) do

  create_table "conhecimento_freelancers", force: :cascade do |t|
    t.string   "login_freelancer"
    t.string   "nome_conhecimento"
    t.string   "certificados"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "conhecimento_requisitados", force: :cascade do |t|
    t.string   "nome_conhecimento"
    t.integer  "codigo_servico"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "conhecimentos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratantes", force: :cascade do |t|
    t.string   "login"
    t.string   "cnnpj_empresa"
    t.string   "cargo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freelancers", force: :cascade do |t|
    t.string   "login"
    t.decimal  "avaliacao_media"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "problemas", force: :cascade do |t|
    t.integer  "id_problema"
    t.string   "criador"
    t.string   "descricao"
    t.string   "categoria"
    t.string   "prioridade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seguidors", force: :cascade do |t|
    t.string   "login_seguidor"
    t.string   "login_seguido"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "servicos", force: :cascade do |t|
    t.string   "login_contratante"
    t.integer  "codigo_servico"
    t.integer  "id_solucao_geradora"
    t.string   "nome_servico"
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.string   "status"
    t.decimal  "preco"
    t.decimal  "avaliacao_final"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "solucaos", force: :cascade do |t|
    t.integer  "id_solucao"
    t.string   "criador"
    t.integer  "id_problema"
    t.string   "descricao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "nome"
    t.string   "cpf"
    t.integer  "idade"
    t.string   "profissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
