class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn,  null: false
      t.string :title,  null: false
      t.integer :author_id,  null: false
      t.string :category
      t.string :description
      t.float :price,  null: false
      t.string :photo

      t.timestamps null: false
    end
  end
end
