class RemoveColumnFromLanguages < ActiveRecord::Migration
  def change
  	remove_column :languages, :string
  end
end
