class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.includes(:reviews).find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)

      if restaurant.save
        respond_to do |format|
          format.html {redirect_to restaurants_path}
          format.text {render plain: restaurant.name}
         end
        else
          respond_to do |format|
            format.html {render :new, status: :unprocessable_entity}
            format.text {render plain: "Mach ich nicht!", status: :unprocessable_entity}
          end
      end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update(restaurant_params)

    redirect_to restaurant_path(restaurant)
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    redirect_to restaurants_path
  end

  def chef_info
    @chef = Chef.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
