class CreateFreelancerKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :freelancer_knowledges do |t|
      t.string :freelancer_login
      t.string :knowledge_name

      t.timestamps
    end
  end
end
