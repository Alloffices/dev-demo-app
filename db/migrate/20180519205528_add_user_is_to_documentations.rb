class AddUserIsToDocumentations < ActiveRecord::Migration[5.1]
  def change
    add_column :documentations, :user_id, :integer
  end
end
