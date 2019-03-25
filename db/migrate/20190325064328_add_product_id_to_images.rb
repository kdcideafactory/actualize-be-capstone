class AddProductIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :product_id, :string
    add_index :images, :product_id
  end
end
