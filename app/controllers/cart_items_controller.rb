class CartItemsController < ApplicationController

  def index 
    @cart_items = CartItem.all
    render :index
  end
  
end
