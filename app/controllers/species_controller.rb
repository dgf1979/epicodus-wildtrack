class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render :index
  end

  def show

  end

  def new
    @species = Species.new
    render :new
  end

  def create
    @species = Species.new(species_params)
    if @species.save
      redirect_to species_index_path
    else
      render :new
    end
  end

  private
  def species_params
    params.require(:species).permit(:name)
  end
end
