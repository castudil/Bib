class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :journal
      t.string :volume
      t.string :pages
      t.string :number
      t.string :month
      t.text :abstract
      t.string :doi
      t.string :file
      t.string :issn
      t.string :issue
      t.string :keyword
      t.string :publisher
      t.string :url
      t.string :owner
      t.string :timestamp
      t.string :publisher
      t.string :url
      t.string :owner
      t.string :timestamp
      t.string :publisher
      t.integer :id_h
      t.integer :bibtex_id

      t.timestamps
    end
  end
end
