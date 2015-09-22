class RenameBooksTypetoMateriality < ActiveRecord::Migration
  def change
    rename_column :books, :type, :materiality
  end
end
