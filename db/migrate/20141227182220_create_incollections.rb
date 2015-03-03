class CreateIncollections < ActiveRecord::Migration
  def change
    create_table :incollections do |t|
      t.string :booktitle
      t.string :publisher
      t.string :keywords
      t.string :editor
      t.string :volume
      t.string :series
      t.string :pages
      t.text :abstract
      t.string :affiliation
      t.string :doi
      t.string :file
      t.string :isbn
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
