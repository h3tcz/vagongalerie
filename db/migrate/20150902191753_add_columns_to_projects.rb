class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string
    add_column :projects, :published, :boolean
  end
end
