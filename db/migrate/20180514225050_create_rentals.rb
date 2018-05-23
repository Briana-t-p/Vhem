class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :address
      t.integer :size
      t.integer :rooms
      t.integer :price
      t.integer :pointGoal
      t.string :propertyType
      t.integer :yearBuilt

      t.timestamps
    end
  end
end
