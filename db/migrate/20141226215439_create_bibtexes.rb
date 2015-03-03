class CreateBibtexes < ActiveRecord::Migration
  def change
    create_table :bibtexes do |t|
      t.string :filename
      t.string :path

      t.timestamps
    end
  end
end
