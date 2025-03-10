module RestaurantsHelper

  def create_emoji(kitchen_type)
    case kitchen_type
    when "normal"
      "🐄"
    when "veggie"
      "🍳"
    when "vegan"
      "🥦"
    end
  end
end
