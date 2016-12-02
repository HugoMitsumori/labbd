class CreateSolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :solutions do |t|
      t.integer :solution_id
      t.integer :user_id
      t.integer :service_id
      t.string :description

      t.timestamps
    end
  end
end
