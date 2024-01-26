class Api::V1::TreatmentLinesController < ApplicationController
  
  def create
    treatment_line = TreatmentLine.new(treatment_line_params)
    if treatment_line.save
      render json: {treatment_line: treatment_line}, status: :created
    else 
      render json: {errors: treatment_line.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    render json: {treatment_lines: TreatmentLine.where(treatment_id:params[:treatment_id])}
  end

  def index_all
    render json: {treatment_lines: TreatmentLine.all}

  end

  private 

  def treatment_line_params 
    params.require(:treatment_line).permit(:date, :patientName, :state, :treatment_id) 
  end

end
