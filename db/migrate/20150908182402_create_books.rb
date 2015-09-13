class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :publisher
      t.string :genre
      t.string :type
      t.references :contributor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
