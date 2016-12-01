class AddContractorToService < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :contractor, foreign_key: true
    add_reference :services, :solution, foreign_key: true
  end
end
