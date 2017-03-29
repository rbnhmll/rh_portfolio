class RenameLanguagesToTags < ActiveRecord::Migration
  def change
    rename_table :languages, :tags
  end
end
