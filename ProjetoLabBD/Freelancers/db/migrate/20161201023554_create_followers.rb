class CreateFollowers < ActiveRecord::Migration[5.0]
  def change
    create_table :followers do |t|
      t.string :follower_login
      t.string :followed_login

      t.timestamps
    end
  end
end
