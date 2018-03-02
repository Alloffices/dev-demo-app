class AddManagementchecksToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :build_twentyeight, :boolean
    add_column :projects, :build_twentynine, :boolean
    add_column :projects, :build_thrity, :boolean
    add_column :projects, :build_thirtyone, :boolean
    add_column :projects, :build_thirtytwo, :boolean
    add_column :projects, :build_thirtythree, :boolean
    add_column :projects, :build_thirtyfour, :boolean
    add_column :projects, :build_thirtyfive, :boolean
    add_column :projects, :build_thirtysix, :boolean
    add_column :projects, :build_thirtyseven, :boolean
    add_column :projects, :build_thirtyeight, :boolean
    add_column :projects, :build_thirtynine, :boolean
    add_column :projects, :build_fourty, :boolean
  end
end
