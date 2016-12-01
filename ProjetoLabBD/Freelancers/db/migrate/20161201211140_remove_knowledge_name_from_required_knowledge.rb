class RemoveKnowledgeNameFromRequiredKnowledge < ActiveRecord::Migration[5.0]
  def change
    remove_column :required_knowledges, :knowledge_name, :string
    remove_column :required_knowledges, :service_code, :integer
  end
end
