class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
