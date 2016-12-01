class RemoveServiceFromProposal < ActiveRecord::Migration[5.0]
  def change
    remove_column :proposals, :service_code, :integer
    remove_column :proposals, :freelancer_login, :string
  end
end
