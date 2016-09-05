class AddColumnToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :project_id, :integer
  end
end
