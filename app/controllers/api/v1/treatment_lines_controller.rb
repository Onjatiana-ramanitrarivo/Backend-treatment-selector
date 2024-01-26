class Api::V1::TreatmentLinesController < ApplicationController
  def create
    render json:{message:"mande ny create"}
  end

  def index
    render json:{message:"mande ny index"}

  end

  def index_all
    render json:{message:"mande ny index_all"}

  end
  
end
