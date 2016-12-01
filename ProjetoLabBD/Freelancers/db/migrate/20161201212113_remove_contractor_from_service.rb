class RemoveContractorFromService < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :contractor_login, :string
    remove_column :services, :solution_id, :integer
  end
end
