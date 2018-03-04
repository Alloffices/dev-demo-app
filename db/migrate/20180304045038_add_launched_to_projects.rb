class AddLaunchedToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :launched, :string
  end
end
