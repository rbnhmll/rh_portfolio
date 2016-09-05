class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :lang_1, :string
    add_column :projects, :lang_2, :string
    add_column :projects, :lang_3, :string
    add_column :projects, :lang_4, :string
    add_column :projects, :lang_5, :string
  end
end
