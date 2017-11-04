class AddTitleToDevtools < ActiveRecord::Migration[5.1]
  def change
    add_column :devtools, :title, :string
  end
end
