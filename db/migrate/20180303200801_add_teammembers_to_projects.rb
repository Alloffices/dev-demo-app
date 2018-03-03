class AddTeammembersToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :accountm, :string
    add_column :projects, :developer, :string
    add_column :projects, :designer, :string
  end
end
