class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.text :image
      t.string :alt
      t.text :path

      t.timestamps null: false
    end
  end
end
