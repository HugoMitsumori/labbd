class CreateConhecimentoFreelancers < ActiveRecord::Migration[5.0]
  def change
    create_table :conhecimento_freelancers do |t|
      t.string :login_freelancer
      t.string :nome_conhecimento
      t.string :certificados

      t.timestamps
    end
  end
end
