class CreateMaplocations < ActiveRecord::Migration
  def change
    create_table :maplocations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
