class AddPlinksToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :plinks, :text
  end
end
