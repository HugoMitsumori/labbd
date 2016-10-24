class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :email
      t.string :nome
      t.string :cpf
      t.integer :idade
      t.string :profissao

      t.timestamps
    end
  end
end
