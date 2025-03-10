class AddKitchenTypeToRestaurants < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurants, :kitchen_type, :integer
  end
end
