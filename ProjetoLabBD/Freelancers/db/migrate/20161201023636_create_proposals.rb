class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.integer :service_code
      t.string :freelancer_login
      t.string :status

      t.timestamps
    end
  end
end
