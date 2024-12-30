class FoodsController < ApplicationController
  def index 
    @foods = Food.all
    render :index
  end

  def show 
    @food = Food.find_by(id: params[:id])
    if @food 
      render :show
    else 
      render json: { error: 'Food item not found'}, status: :not_found
    end
  end

  def create 
    @food = Food.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url],
      description: params[:description],
      category_id: params[:category_id] 
    )
    if @food.save 
      render json: { message: 'The food has been created'}, status: :created
    else 
      render json: { error: 'Was not created'}, status: :bad_request
    end 
  end 

  def update 
    @food = Food.find_by(id: params[:id])
    if @food 
      if @food.update(
        name: params[:name] || @food.name, 
        price: params[:price] || @food.price, 
        image_url: params[:image_url] || @food.image_url,
        description: params[:description] || @food.description,
        category_id: params[:category_id] || @food.category_id
      )
        render json: { message: 'Food item updated', food: @food}, status: :okay
      else 
        render json: { errors: @food.errors.errors_full_messages}, status: :unprocessable_entity
      end
    else 
      render json: { error: 'Food item not found'}, status: :not_found
    end 
  end 

  def destroy 
    @food = Food.find_by(id: params[:id])
    if @food
      @food.destroy
      render json: { message: 'Food item successfully deleted'}, status: :ok
    else 
      render json: { error: 'Food item not found'}, status: :not_found
    end 
  end 

end
