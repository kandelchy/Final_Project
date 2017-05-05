class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false
      t.integer :quantity, null: false
      t.date :date, null: :false

      t.timestamps null: false
    end
  end
end
