class CreateFreelancers < ActiveRecord::Migration[5.0]
  def change
    create_table :freelancers do |t|
      t.string :login
      t.decimal :average_score

      t.timestamps
    end
  end
end
