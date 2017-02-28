class UsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :user_name
      t.string :last_name
      t.timestamps
    end
  end
end
