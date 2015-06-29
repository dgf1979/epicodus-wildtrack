class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = Sighting.new
  end


  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new(sighting_params)
    if @sighting.save
      flash[:notice] = "Sighting Added"
      redirect_to species_path(@sighting.species)
    else
      render :new
  end
end

  def edit
    @sighting = Sighting.find(params[:id])
    @species = Species.find(params[:species_id])
    render :edit
  end

  def destroy
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to species_path(@species)
  end

end

private
  def sighting_params
    params.require(:sighting).permit(:longitude, :latitude, :date)
  end
