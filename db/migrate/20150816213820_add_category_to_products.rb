class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :integer
    add_index :products, :category_id
    add_index :products, :user_id
  end
end
