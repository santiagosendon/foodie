class RestaurantsController < ApplicationController

  def index
     @restaurants = Restaurant.all
   end

    def show
     @restaurant = Restaurant.includes(:menu_items).find(params[:id])
     @all_menus = MenuItem.all
   end


def new

end

def create
end

end
