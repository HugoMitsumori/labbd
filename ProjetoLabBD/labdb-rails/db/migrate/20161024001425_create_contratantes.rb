class CreateContratantes < ActiveRecord::Migration[5.0]
  def change
    create_table :contratantes do |t|
      t.string :login
      t.string :cnnpj_empresa
      t.string :cargo

      t.timestamps
    end
  end
end
