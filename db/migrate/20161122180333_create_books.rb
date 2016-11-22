class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :author_id
      t.string :genre
      t.string :isbn

      t.timestamps
    end
  end
end
