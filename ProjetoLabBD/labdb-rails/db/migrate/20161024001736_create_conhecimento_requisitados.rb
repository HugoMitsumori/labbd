class CreateConhecimentoRequisitados < ActiveRecord::Migration[5.0]
  def change
    create_table :conhecimento_requisitados do |t|
      t.string :nome_conhecimento
      t.integer :codigo_servico

      t.timestamps
    end
  end
end
