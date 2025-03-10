class CartsController < ApplicationController
  def show
    # Find the user's cart or create it if it doesn't exist
    @cart = current_user.cart || current_user.create_cart || current_user.create_cart
    @cart_items = @cart.cart_items.includes(:food) # Now includes the related foods

    render :show # This renders the cart page with all the cart items
  end

  def checkout
    @cart = current_user.cart
  
    # Calculate the total price of the cart
    total_price = @cart.cart_items.sum { |item| item.food.price * item.quantity }
  
    # Create the order and associate it with the cart and user
    @order = Order.create(user: current_user, total_price: total_price, cart: @cart)
  
    @cart.cart_items.each do |item|
      @order.order_items.create(food: item.food, quantity: item.quantity, price: item.food.price)
    end
    @cart.cart_items.destroy_all
  end
  
  def destroy
    @cart = current_user.cart
  
    if @cart

      @cart.cart_items.destroy_all
  
      if @cart.destroy
        render json: { message: "Cart deleted successfully" }, status: :ok
      else
        render json: { message: "Failed to delete cart" }, status: :unprocessable_entity
      end
    else
      render json: { message: "Cart not found" }, status: :not_found
    end
  end  
end 
