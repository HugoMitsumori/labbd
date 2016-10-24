class CreateSolucaos < ActiveRecord::Migration[5.0]
  def change
    create_table :solucaos do |t|
      t.integer :id_solucao
      t.string :criador
      t.integer :id_problema
      t.string :descricao

      t.timestamps
    end
  end
end
