class Api::V1::CategoriesController < ApplicationController

  def create
    category = Category.new(category_params)
    if category.save
      render json: {category: category}, status: :created
    else
      render json: {errors: category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    categories = Category.all
    render json:{categories:categories}
  end

  def show
    category = Category.find_by(id:params[:id])
    if category
      render json: {category:category}
    else 
      render json: {message:"Category doesn't exist"}, status: 400
    end
  end

  def destroy 
    destroy = Category.find(params[:id]).destroy
    render status: :no_content
  end

  def update 
    category = Category.find_by(id:params[:id])
    if category.update(category_params)
      render json: {category: category}, status: :ok
    else 
      render json: {errors: category.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private

  def category_params
    params.require(:category).permit(:title)
  end

end
