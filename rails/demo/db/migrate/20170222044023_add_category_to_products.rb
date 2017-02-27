class AddCategoryToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category, :string
    remove_column :products, :float
  end
end
