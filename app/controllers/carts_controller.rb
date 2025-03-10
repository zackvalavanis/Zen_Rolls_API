class CartsController < ApplicationController
  def show
    # Find the user's cart or create it if it doesn't exist
    @cart = current_user.cart || current_user.create_cart || current_user.create_cart
    @cart_items = @cart.cart_items.includes(:food) # Now includes the related foods

    render :show # This renders the cart page with all the cart items
  end

  def checkout
    if current_user.nil?
      render json: { error: "User not authenticated" }, status: :unauthorized
      return
    end
  
    @cart = current_user.cart
  
    if @cart.nil?
      render json: { error: "Cart not found" }, status: :not_found
      return
    end
  
    total_price = @cart.cart_items.sum { |item| item.food.price * item.quantity }
  
    # Explicitly assign `user_id`
    @order = Order.new(user_id: current_user.id, total_price: total_price, cart: @cart)
  
    if @order.save
      @cart.cart_items.each do |item|
        @order.order_items.create!(food: item.food, quantity: item.quantity, price: item.food.price)
      end
      @cart.cart_items.destroy_all
      render json: { message: "Checkout successful", order_id: @order.id }, status: :ok
    else
      render json: { error: "Checkout failed", details: @order.errors.full_messages }, status: :unprocessable_entity
    end
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
