class AddWebbuildToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :build_two, :boolean
    add_column :projects, :build_three, :boolean
    add_column :projects, :build_four, :boolean
    add_column :projects, :build_five, :boolean
    add_column :projects, :build_six, :boolean
    add_column :projects, :build_seven, :boolean
    add_column :projects, :build_eight, :boolean
    add_column :projects, :build_nine, :boolean
  end
end
