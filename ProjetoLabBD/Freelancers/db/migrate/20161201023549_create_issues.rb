class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.integer :issue_id
      t.string :creator
      t.string :description
      t.string :category
      t.string :priority

      t.timestamps
    end
  end
end
