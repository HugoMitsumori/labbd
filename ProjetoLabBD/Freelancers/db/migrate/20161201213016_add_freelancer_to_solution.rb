class AddFreelancerToSolution < ActiveRecord::Migration[5.0]
  def change
    add_reference :solutions, :freelancer, foreign_key: true
    add_reference :solutions, :service, foreign_key: true
  end
end
