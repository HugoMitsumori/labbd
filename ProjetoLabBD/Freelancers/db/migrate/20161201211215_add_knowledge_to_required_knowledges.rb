class AddKnowledgeToRequiredKnowledges < ActiveRecord::Migration[5.0]
  def change
    add_reference :required_knowledges, :knowledge, foreign_key: true
    add_reference :required_knowledges, :service, foreign_key: true
  end
end
