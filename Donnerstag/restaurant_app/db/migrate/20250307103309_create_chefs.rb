class CreateChefs < ActiveRecord::Migration[7.1]
  def change
    create_table :chefs do |t|
      t.string :name
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
