class Api::V1::TreatmentsController < ApplicationController

  def create
    treatment = Treatment.new(treatment_params)
    if treatment.save
      render json: {treatment: treatment}, status: :created
    else 
      render json: {errors: treatment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    render json: {treatments: Treatment.where(category_id:params[:category_id])}
  end

  def index_all
    render json: {treatments: Treatment.all}
  end

  def destroy 
    destroy = Treatment.find(params[:id]).destroy
    render status: :no_content
  end

  def update 
    treatment = Treatment.find_by(id:params[:id])
    if treatment.update(treatment_params)
      render json: {treatment: treatment}, status: :ok
    else 
      render json: {errors: treatment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  
  private 

  def treatment_params
    params.require(:treatment).permit(:name, :translation, :state, :category_id)
  end

end
