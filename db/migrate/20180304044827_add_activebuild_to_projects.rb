class AddActivebuildToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :activebuild, :string
  end
end
