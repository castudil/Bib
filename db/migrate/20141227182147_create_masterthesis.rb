class CreateMasterthesis < ActiveRecord::Migration
  def change
    create_table :masterthesis do |t|
      t.string :school
      t.string :address
      t.string :month
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
