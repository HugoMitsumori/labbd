class AddAcceptedToSolutions < ActiveRecord::Migration[5.0]
  def change
    add_column :solutions, :accepted, :boolean
  end
end
