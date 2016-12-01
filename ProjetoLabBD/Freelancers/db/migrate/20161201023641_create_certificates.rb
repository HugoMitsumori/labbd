class CreateCertificates < ActiveRecord::Migration[5.0]
  def change
    create_table :certificates do |t|
      t.string :knowledge_name
      t.string :freelancer_login
      t.string :certificate_name

      t.timestamps
    end
  end
end
