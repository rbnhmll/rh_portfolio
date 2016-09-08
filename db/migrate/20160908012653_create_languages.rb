class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :lang_name
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
