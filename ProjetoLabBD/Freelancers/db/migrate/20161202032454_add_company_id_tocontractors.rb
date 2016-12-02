class AddCompanyIdTocontractors < ActiveRecord::Migration[5.0]
  def change
  	add_column :contractors, :company_id, :integer
  end
end
