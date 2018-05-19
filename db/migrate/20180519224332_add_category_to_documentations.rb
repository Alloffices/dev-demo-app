class AddCategoryToDocumentations < ActiveRecord::Migration[5.1]
  def change
    add_column :documentations, :category, :string
  end
end
