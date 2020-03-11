class PlantsController < ApplicationController
  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
#    @garden = Garden.find(params[:garden_id])
    redirect_to @plant.garden
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    @plant.save!
    redirect_to garden_path(@garden)
  end


  def plant_params
    params.require(:plant).permit(:img_url, :name)
  end
end
