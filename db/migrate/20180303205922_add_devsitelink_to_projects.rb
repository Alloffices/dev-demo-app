class AddDevsitelinkToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :devlink, :text
  end
end
