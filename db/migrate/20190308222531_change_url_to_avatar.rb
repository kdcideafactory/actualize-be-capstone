class ChangeUrlToAvatar < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :url, :avatar
  end
end
