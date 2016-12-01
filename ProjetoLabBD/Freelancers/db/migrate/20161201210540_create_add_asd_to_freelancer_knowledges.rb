class CreateAddAsdToFreelancerKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :add_asd_to_freelancer_knowledges do |t|
      t.references :knowledge, foreign_key: true
      t.references :freelancer, foreign_key: true

      t.timestamps
    end
  end
end
