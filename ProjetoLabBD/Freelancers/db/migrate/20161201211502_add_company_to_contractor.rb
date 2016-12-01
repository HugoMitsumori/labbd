class AddCompanyToContractor < ActiveRecord::Migration[5.0]
  def change
    add_reference :contractors, :company, foreign_key: true
  end
end
