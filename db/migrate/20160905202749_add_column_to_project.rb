class AddColumnToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :active, :boolean
  end
end
