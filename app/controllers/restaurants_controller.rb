class RestaurantsController < ApplicationController

  def index
     @restaurants = Restaurant.all
   end

    def show
     @restaurant = Restaurant.includes(:menu_items).find(params[:id])
     # @restaurant = Restaurant.find(params[:id])
     @all_menus = MenuItem.all
     render :'restaurants/show.html.erb'
   end


end
