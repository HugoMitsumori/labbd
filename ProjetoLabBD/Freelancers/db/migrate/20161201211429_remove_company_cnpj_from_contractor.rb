class RemoveCompanyCnpjFromContractor < ActiveRecord::Migration[5.0]
  def change
    remove_column :contractors, :company_cnpj, :string
  end
end
