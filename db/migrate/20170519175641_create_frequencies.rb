class CreateFrequencies < ActiveRecord::Migration[5.0]
  def change
    create_table :frequencies do |t|
      t.string :bar_code
      t.string :date

      t.timestamps
    end
  end
end
