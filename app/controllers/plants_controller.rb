class PlantsController < ApplicationController
  def create
    # Define the logic to create a new plant
    @plant = Plant.new(plant_params)
    if @plant.save
      # Redirect to the show page for the new plant
      redirect_to plant_path(@plant)
    else
      # Render the new plant form again with the validation errors
      render :new
    end
  end

  def index
    # Retrieve all the plants from the database
    @plants = Plant.all
  end

  def show
    # Find the plant with the given ID
    @plant = Plant.find(params[:id])
  end

  private

  # Define the strong parameters for the plant
  def plant_params
    params.require(:plant).permit(:name, :description, :price)
  end
end
