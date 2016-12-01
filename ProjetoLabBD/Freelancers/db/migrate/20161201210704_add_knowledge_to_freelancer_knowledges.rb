class AddKnowledgeToFreelancerKnowledges < ActiveRecord::Migration[5.0]
  def change
    add_reference :freelancer_knowledges, :knowledge, foreign_key: true
    add_reference :freelancer_knowledges, :freelancer, foreign_key: true
  end
end
