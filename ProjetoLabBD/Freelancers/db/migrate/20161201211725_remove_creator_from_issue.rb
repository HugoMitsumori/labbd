class RemoveCreatorFromIssue < ActiveRecord::Migration[5.0]
  def change
    remove_column :issues, :creator, :string
  end
end
