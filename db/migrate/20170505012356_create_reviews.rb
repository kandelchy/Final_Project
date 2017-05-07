class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false
      t.string :rate, null: false
      t.string :rev_text, null: false
      t.date :rev_date

      t.timestamps null: false
    end
  end
end
