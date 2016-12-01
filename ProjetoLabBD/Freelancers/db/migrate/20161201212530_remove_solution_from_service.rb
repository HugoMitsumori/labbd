class RemoveSolutionFromService < ActiveRecord::Migration[5.0]
  def change
    remove_reference :services, :solution, foreign_key: true
  end
end
