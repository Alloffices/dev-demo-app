class AddWebsitecontentToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :build_ten, :boolean
    add_column :projects, :build_eleven, :boolean
    add_column :projects, :build_twelve, :boolean
    add_column :projects, :build_thirteen, :boolean
    add_column :projects, :build_fourteen, :boolean
    add_column :projects, :build_fifthteen, :boolean
  end
end
