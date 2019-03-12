class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.text :name
      t.text :description
      t.decimal :price
      t.integer :qoh

      t.timestamps
    end
  end
end
