class AddDetailsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :imgr, :text
  end
end
