class CategoriesController < ApplicationController
    def index 
      @categories = Category.all
      render :index
    end
  
    def show 
      @category = Category.find_by(id: params[:id])
      if @category 
        render :show
      else 
        render json: { error: 'Category item not found'}, status: :not_found
      end
    end
  
    def create 
      @category = Category.new(
        name: params[:name]
      )
      if @category.save 
        render json: { message: 'The category has been created'}, status: :created
      else 
        render json: { error: 'Was not created'}, status: :bad_request
      end 
    end 
  
    def update 
      @category = Category.find_by(id: params[:id])
      if @category 
        if @category.update(
          name: params[:name] || @category.name, 
        )
          render json: { message: 'Category item updated', category: @category}, status: :ok
        else 
          render json: { errors: @category.errors.errors_full_messages}, status: :unprocessable_entity
        end
      else 
        render json: { error: 'Category item not found'}, status: :not_found
      end 
    end 
  
    def destroy 
      @category = Category.find_by(id: params[:id])
      if @category
        @category.destroy
        render json: { message: 'Category item successfully deleted'}, status: :ok
      else 
        render json: { error: 'Category item not found'}, status: :not_found
      end 
    end 
end
