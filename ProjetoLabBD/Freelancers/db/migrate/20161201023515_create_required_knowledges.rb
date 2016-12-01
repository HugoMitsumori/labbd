class CreateRequiredKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :required_knowledges do |t|
      t.string :knowledge_name
      t.integer :service_code

      t.timestamps
    end
  end
end
