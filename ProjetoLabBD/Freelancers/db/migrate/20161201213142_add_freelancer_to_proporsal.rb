class AddFreelancerToProporsal < ActiveRecord::Migration[5.0]
  def change
    add_reference :proposals, :freelancer, foreign_key: true
    add_reference :proposals, :service, foreign_key: true
  end
end
