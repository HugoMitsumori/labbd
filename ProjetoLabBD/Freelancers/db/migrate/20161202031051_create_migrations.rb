class CreateMigrations < ActiveRecord::Migration[5.0]
  def change
    create_table :migrations do |t|
      t.string :RemoveCompanyFromContractors
      t.integer :company_id

      t.timestamps
    end
  end
end
