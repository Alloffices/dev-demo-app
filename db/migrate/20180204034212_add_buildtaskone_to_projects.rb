class AddBuildtaskoneToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :build_one, :boolean
  end
end
