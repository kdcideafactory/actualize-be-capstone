class AddProductIdToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :product_id, :integer
  end
end
