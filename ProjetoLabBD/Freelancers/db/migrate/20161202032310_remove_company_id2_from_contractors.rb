class RemoveCompanyId2FromContractors < ActiveRecord::Migration[5.0]
  def change
    remove_column :contractors, :company_id, :integer
  end
end