class CreateAlumns < ActiveRecord::Migration[5.0]
  def change
    create_table :alumns do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :gender
      t.date :birth_date
      t.string :bar_code
      t.string :registry
      t.string :shift

      t.timestamps
    end
  end
end
