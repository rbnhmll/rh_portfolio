class RemoveColumnFromProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :lang_1
  	remove_column :projects, :lang_2
  	remove_column :projects, :lang_3
  	remove_column :projects, :lang_4
  	remove_column :projects, :lang_5
  end
end
