class AddLongDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :long_description, :text
  end
end
