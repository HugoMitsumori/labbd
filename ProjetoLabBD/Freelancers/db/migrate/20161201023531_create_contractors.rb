class CreateContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :contractors do |t|
      t.string :login
      t.string :company_cnpj
      t.string :role

      t.timestamps
    end
  end
end
