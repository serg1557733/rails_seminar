class Restaurant < ApplicationRecord
  has_many :reviews
  has_one :chef
  enum :kitchen_type, %w"normal veggie vegan"
end
