class CartItemsController < ApplicationController

  def index
    @cart = current_user.cart
    if @cart
      @cart_items = @cart.cart_items.includes(:food) # You can adjust to fetch related foods as needed

      # Render the cart items as JSON
      render json: @cart_items.as_json(include: :food)  # or adjust based on how you want to format the response
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
    # Find or create the cart for the current user
    @cart = current_user.cart || current_user.create_cart

    # Find or initialize the cart item by food_id (food is the model for items)
    @cart_item = @cart.cart_items.find_or_initialize_by(food_id: params[:food_id])

    # Update the quantity if it exists or set the quantity to the given one
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
