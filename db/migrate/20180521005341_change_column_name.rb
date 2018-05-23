class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :rentals, :avatars, :avatar
  end
end
