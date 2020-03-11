class GardensController < ApplicationController
  before_action :set_garden

  def show
    @plant = Plant.new
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garden_params
      params.require(:garden).permit(:name, :img_url)
    end
end
