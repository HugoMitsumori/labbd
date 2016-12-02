class RemoveCompanyIdReferenceFromContractors < ActiveRecord::Migration[5.0]
  def change
    remove_reference :contractors, :company_id
  end
end