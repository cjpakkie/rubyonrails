class CreateDojos < ActiveRecord::Migration[5.0]
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
