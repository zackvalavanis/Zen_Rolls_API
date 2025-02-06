class CartsController < ApplicationController
  def show
    # Find the user's cart or create it if it doesn't exist
    @cart = current_user.cart || current_user.create_cart
    @cart_items = @cart.cart_items.includes(:food) # Now includes the related foods

    render :show # This renders the cart page with all the cart items
  end

  def checkout
    # Assuming you will create an order and handle payment
    total_price = @cart.cart_items.sum { |item| item.food.price * item.quantity }
    
    # Create the order
    order = @cart.orders.create(total_price: total_price)
    
    # You might need to integrate with Stripe here for actual payment processing
    
    render json: { order: order, total_price: total_price }
  end
end
