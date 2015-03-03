class CreatePhdthesis < ActiveRecord::Migration
  def change
    create_table :phdthesis do |t|
      t.string :school
      t.string :owner
      t.string :timestamp
      t.string :address
      t.string :type
      t.string :file
      t.string :url
      t.text :abstract
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
