class ChangeLangnameColumnToTagname < ActiveRecord::Migration
  def self.up
    rename_column :tags, :lang_name, :tag_name
  end

  def self.down
    rename_column :tags, :tag_name, :lang_name
  end
end
