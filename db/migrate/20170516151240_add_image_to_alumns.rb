class AddImageToAlumns < ActiveRecord::Migration[5.0]
  def change
    add_column :alumns, :image, :BLOB
  end
end
