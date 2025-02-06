class CartsController < ApplicationController
  def show
    # Find the user's cart or create it if it doesn't exist
    @cart = current_user.cart || current_user.create_cart || current_user.create_cart
    @cart_items = @cart.cart_items.includes(:food) # Now includes the related foods

    render :show # This renders the cart page with all the cart items
  end

  def checkout
    total_price = @cart.cart_items.sum { |item| item.food.price * item.quantity }
    
    order = @cart.orders.create(total_price: total_price)
    
    render json: { order: order, total_price: total_price }
    @cart.cart_items.destroy_all
  end

  def destroy
    # Find the user's cart
    @cart = current_user.cart
  
    # Check if the cart exists before trying to delete cart items and the cart itself
    if @cart
      # Destroy all cart items first to prevent foreign key violations
      @cart.cart_items.destroy_all
  
      # Now destroy the cart
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
