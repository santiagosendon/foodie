class MenuItemsController < ApplicationController


  def index
    @menuitems = MenuItem.all
  end

  def show
    @menuitem = MenuItem.find(params[:id])
    redirect_to @menuitem.restaurant
  end



end
