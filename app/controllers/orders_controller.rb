class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @cart = current_user.cart
    @order = current_user.orders.build

    # Calculate the total price for the cart
    @total_price = @cart.cart_items.sum { |item| item.product.price * item.quantity }

    # Create the order and associated ordered_items
    @order.total_price = @total_price
    @order.save

    @cart.cart_items.each do |cart_item|
      OrderedItem.create(order: @order, cart_item: cart_item)
    end

    # Clear the cart after placing the order
    @cart.cart_items.destroy_all

    redirect_to order_path(@order)
  end
end