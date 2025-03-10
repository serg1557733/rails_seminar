class Restaurant < ApplicationRecord
  has_many :reviews
  has_one :chef
  enum :kitchen_type, [:normal, :veggie, :vegan]
end
