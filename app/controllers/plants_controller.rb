class PlantsController < ApplicationController
  # /gardens/:garden_id/plants/new
  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save
      redirect_to @garden
    else
      render :new
    end
  end

  # plants/:id
  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to @plant.garden
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
