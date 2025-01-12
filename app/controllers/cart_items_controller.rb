class CartItemsController < ApplicationController

  def index
    cart = Cart.find_by(id: params[:cart_id])
    if cart
      @cart_items = cart.cart_items.includes(:food)
      render :index
    else
      render json: { error: "Cart not found" }, status: :not_found
    end
  end

  def create
    cart = Cart.find_or_create_by(id: params[:cart_id])
    cart_item = cart.cart_items.find_by(food_id: params[:food_id])

    if cart_item
      cart_item.update(quantity: cart_item.quantity + params[:quantity].to_i)
    else
      cart_item = cart.cart_items.new(food_id: params[:food_id], quantity: params[:quantity])
    end

    if cart_item.save
      render json: { message: 'Cart item added/updated', cart_item: cart_item }, status: :created
    else
      render json: { errors: cart_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    cart_item = CartItem.find_by(id: params[:id])

    if cart_item
      cart_item.destroy
      render json: { message: 'Cart item removed successfully' }, status: :ok
    else
      render json: { error: 'Cart item not found' }, status: :not_found
    end
  end

end
