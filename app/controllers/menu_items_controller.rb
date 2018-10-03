class MenuItemsController < ApplicationController


  def index
    @menuitems = MenuItem.all
  end

  def show
    @menuitem = MenuItem.find(params[:id])
  end




end
