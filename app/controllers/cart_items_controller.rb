class CartItemsController < ApplicationController

  def index
    @cart = current_user.cart
    if @cart
      @cart_items = @cart.cart_items
      render :index
    else
      render json: { error: "Cart not found" }, status: :not_found
    end
  end
  
  def show
    @cart_item = CartItem.find(params[:id])

    render json: { cart_item: @cart_item, total_price: @cart_item.cart.total_price }
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Cart item not found' }, status: :not_found
  end

  def create
    @cart = current_user.cart || current_user.create_cart

    @cart_item = @cart.cart_items.find_or_initialize_by(food_id: params[:food_id])

    @cart_item.quantity = (@cart_item.quantity || 0) + params[:quantity].to_i

    if @cart_item.save
      render json: { message: 'Cart item added/updated', cart_item: @cart_item }, status: :created
    else
      render json: { errors: @cart_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    # Find the cart item by id
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    # Recalculate total price after deletion (optional)
    total_price = @cart_item.cart.total_price

    render json: { message: 'Item deleted', total_price: total_price }
  end
end
