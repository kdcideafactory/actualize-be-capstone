class RemoveSubjectFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :subject, :string
  end
end
