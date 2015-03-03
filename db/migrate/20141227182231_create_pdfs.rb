class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :fileName
      t.attachment :pdfFile
      t.integer :bib_id

      t.timestamps
    end
  end
end
