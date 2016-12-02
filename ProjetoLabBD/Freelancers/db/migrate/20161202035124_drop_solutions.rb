class DropSolutions < ActiveRecord::Migration[5.0]
  def change
  	drop_table :solutions
  end
end
