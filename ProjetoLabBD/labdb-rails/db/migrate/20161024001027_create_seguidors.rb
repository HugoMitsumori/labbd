class CreateSeguidors < ActiveRecord::Migration[5.0]
  def change
    create_table :seguidors do |t|
      t.string :login_seguidor
      t.string :login_seguido

      t.timestamps
    end
  end
end
