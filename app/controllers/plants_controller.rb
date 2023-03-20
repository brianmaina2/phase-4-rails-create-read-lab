class PlantsController < ApplicationController
  wrap_parameters format: []

  # GET '/plants'
  def index
      render json: Plant.all
  end

  # GET 'plants/:id'
  def show
      plant = Plant.find_by(id: params[:id])
      if plant
          render json: plant, status: 200
      else
          render json: {"error": "Plant not found"}, status: 404
      end
  end


  # POST '/plants'
  def create
      plant=Plant.create(plant_params)
      render json: plant, status: 201
  end


  private 

  def plant_params
      params.permit(:name, :image, :price)
  end
end
