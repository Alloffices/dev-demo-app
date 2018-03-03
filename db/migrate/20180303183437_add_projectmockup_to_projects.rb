class AddProjectmockupToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :mockup, :string
  end
end
