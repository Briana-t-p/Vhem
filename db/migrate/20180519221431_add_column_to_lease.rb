class AddColumnToLease < ActiveRecord::Migration[5.2]
  def change
    add_column :leases, :user_id, :integer
    add_column :leases, :rental_id, :integer
    add_column :leases, :avatar, :string
  end
end
