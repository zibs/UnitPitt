class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :slug
      t.string :bio

      t.timestamps null: false
    end
    add_index :contributors, :slug, unique: true
  end
end
