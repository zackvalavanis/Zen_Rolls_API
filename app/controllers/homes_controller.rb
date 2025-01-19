class HomesController < ApplicationController
  def index 
    render json: {message: 'This is your home page'}
  end 
end
