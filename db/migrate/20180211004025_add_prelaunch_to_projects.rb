class AddPrelaunchToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :build_sixteen, :boolean
    add_column :projects, :build_seventeen, :boolean
    add_column :projects, :build_eighteen, :boolean
    add_column :projects, :build_nineteen, :boolean
    add_column :projects, :build_twentee, :boolean
    add_column :projects, :build_twenteeone, :boolean
    add_column :projects, :build_twenteetwo, :boolean
    add_column :projects, :build_twenteethree, :boolean
    add_column :projects, :build_twenteefour, :boolean
    add_column :projects, :build_twenteefive, :boolean
    add_column :projects, :build_twenteesix, :boolean
    add_column :projects, :build_twenteeseven, :boolean
  end
end
