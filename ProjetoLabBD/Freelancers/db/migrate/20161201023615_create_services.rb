class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :contractor_login
      t.integer :service_code
      t.integer :solution_id
      t.string :service_name
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.decimal :price
      t.decimal :final_score

      t.timestamps
    end
  end
end
