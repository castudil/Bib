class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :publisher
      t.string :doi
      t.string :pages
      t.string :address
      t.string :edition
      t.string :isbn
      t.string :month
      t.string :note
      t.string :owner
      t.string :timestamp
      t.string :url
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
