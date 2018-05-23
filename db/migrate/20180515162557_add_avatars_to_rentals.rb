class AddAvatarsToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :avatars, :string
  end
end
