class AddInactiveToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :inactive, :string
  end
end
