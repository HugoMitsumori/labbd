class RemoveContractorIdFromServices < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :contractor_id, :integer
    add_column :services, :user_id, :integer
  end
end
