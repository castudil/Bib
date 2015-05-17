class CreateBibs < ActiveRecord::Migration
  def change
    create_table :bibs do |t|
      t.text :author
      t.text :title
      t.integer :year
      t.integer :tipo
      t.string :path
      t.integer :heir_id
      t.string :heir_type
      t.integer :bibtex_id
      t.string :file

      t.timestamps
    end
  end
end
