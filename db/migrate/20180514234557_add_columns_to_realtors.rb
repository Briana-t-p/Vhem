class AddColumnsToRealtors < ActiveRecord::Migration[5.2]
  def change
    add_column :realtors, :companyName, :string
    add_column :realtors, :phoneNumber, :integer
  end
end
