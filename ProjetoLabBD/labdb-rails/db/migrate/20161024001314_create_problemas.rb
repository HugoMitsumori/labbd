class CreateProblemas < ActiveRecord::Migration[5.0]
  def change
    create_table :problemas do |t|
      t.integer :id_problema
      t.string :criador
      t.string :descricao
      t.string :categoria
      t.string :prioridade

      t.timestamps
    end
  end
end
