class RemoveKnowledgeFromCertificate < ActiveRecord::Migration[5.0]
  def change
    remove_column :certificates, :knowledge_name, :string
    remove_column :certificates, :freelancer_login, :string
  end
end
