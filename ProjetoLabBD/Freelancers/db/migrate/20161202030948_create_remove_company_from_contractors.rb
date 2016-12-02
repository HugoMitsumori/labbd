class CreateRemoveCompanyFromContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :remove_company_from_contractors do |t|
      t.integer :company_id

      t.timestamps
    end
  end
end
