class AddEditaccessToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :editaccess, :text
  end
end
