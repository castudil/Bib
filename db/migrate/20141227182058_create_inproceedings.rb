class CreateInproceedings < ActiveRecord::Migration
  def change
    create_table :inproceedings do |t|
      t.text :booktitle
      t.string :editor
      t.string :pages
      t.text :address
      t.text :publisher
      t.string :doi
      t.string :isbn
      t.text :location
      t.text :abstract
      t.text :bibsource
      t.string :crossref
      t.text :ee
      t.text :file
      t.string :owner
      t.text :timestamp
      t.text :url
      t.text :review
      t.text :issn
      t.text :keywords
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
