class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :lang_1
      t.string :lang_2
      t.string :lang_3
      t.string :lang_4
      t.string :lang_5
      t.string :string

      t.timestamps null: false
    end
  end
end
