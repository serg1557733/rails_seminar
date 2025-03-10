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
    rest = Restaurant.new(restaurant_params)
    rest.save
    redirect_to restaurants_path
  end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.save

    redirect_to restaurant_path(restaurant)
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    redirect_to restaurants_path
  end


  def chef_info
    puts "CHEF INFO _____+++++++++++==+______ "
    p params
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
