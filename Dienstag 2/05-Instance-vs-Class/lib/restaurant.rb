class Restaurant
  attr_reader :city, :average_rating

  def initialize(city, name)
    @city = city
    @name = name
    @avarage_rating = 0
  end

  def rate(new_rate)
    @avarage_rating = new_rate
  end

  def self.filter_by_city(restaurants, city)
    [restaurants.find { |restaurant| restaurant.city == city }]
  end
end


jules_verne = Restaurant.new("paris", "Jules Verne")
bluebird = Restaurant.new("london", "Bluebird")
daniel = Restaurant.new("new york", "Daniel")
restaurants = [jules_verne, bluebird, daniel]
Restaurant.filter_by_city(restaurants, "london")
