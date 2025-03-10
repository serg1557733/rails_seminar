class AddKitchenTypeToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :kitchen_type, :integer, default: 0
  end
end
