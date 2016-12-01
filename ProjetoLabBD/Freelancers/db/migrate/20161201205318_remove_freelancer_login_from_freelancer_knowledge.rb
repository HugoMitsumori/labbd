class RemoveFreelancerLoginFromFreelancerKnowledge < ActiveRecord::Migration[5.0]
  def change
    remove_column :freelancer_knowledges, :freelancer_login, :string
    remove_column :freelancer_knowledges, :knowledge_name, :string
  end
end
