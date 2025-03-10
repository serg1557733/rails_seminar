class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.timestamp :crated_at
      t.timestamp :updated_at
    end
  end
end
