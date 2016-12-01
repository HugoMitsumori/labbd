class RemoveCreatorFromSolution < ActiveRecord::Migration[5.0]
  def change
    remove_column :solutions, :creator, :string
    remove_column :solutions, :problem_id, :integer
  end
end
