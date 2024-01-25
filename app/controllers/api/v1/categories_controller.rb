class Api::V1::CategoriesController < ApplicationController
  def create
    render json:{message:"mande ny create"}
  end

  def index
    categories = Category.all
    render json:{categories:categories}
  end

  def show
    category = Category.find_by(id:params[:id])
    if category
      render json: {category:category}, status: 200
    else 
      render json: {message:"Category doesn't exist"}, status: 400
    end
  end
end
