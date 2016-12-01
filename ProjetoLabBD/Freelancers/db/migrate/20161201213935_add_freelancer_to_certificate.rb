class AddFreelancerToCertificate < ActiveRecord::Migration[5.0]
  def change
    add_reference :certificates, :knowledge, foreign_key: true
    add_reference :certificates, :freelancer, foreign_key: true
  end
end
