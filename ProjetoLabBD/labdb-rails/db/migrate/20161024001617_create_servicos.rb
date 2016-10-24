class CreateServicos < ActiveRecord::Migration[5.0]
  def change
    create_table :servicos do |t|
      t.string :login_contratante
      t.integer :codigo_servico
      t.integer :id_solucao_geradora
      t.string :nome_servico
      t.datetime :data_inicio
      t.datetime :data_termino
      t.string :status
      t.decimal :preco
      t.decimal :avaliacao_final

      t.timestamps
    end
  end
end
