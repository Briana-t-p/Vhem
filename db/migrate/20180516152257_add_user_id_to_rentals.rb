class AddUserIdToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :realtor_id, :integer
  end
end
