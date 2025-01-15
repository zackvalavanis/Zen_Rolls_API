class CartsController < ApplicationController
  def show
    # Find the user's cart or create it if it doesn't exist
    @cart = current_user.cart || current_user.create_cart
    @cart_items = @cart.cart_items.includes(:food) # Now includes the related foods

    render :show # This renders the cart page with all the cart items
  end
end
