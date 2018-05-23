class AddAvatarToRealtors < ActiveRecord::Migration[5.2]
  def change
    add_column :realtors, :avatar, :string
  end
end
