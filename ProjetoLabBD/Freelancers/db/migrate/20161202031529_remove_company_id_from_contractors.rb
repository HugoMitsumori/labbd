class RemoveCompanyIdFromContractors < ActiveRecord::Migration[5.0]
  def change
    remove_column :contractors, :company_id, :integer
    add_column :contractors, :company_id, :integer
  end
end
