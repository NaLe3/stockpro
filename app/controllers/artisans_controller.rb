class ArtisansController < ApplicationController

  def index 
    @artisans = Artisan.all
  end 

  def show
    @artisan = Artisan.find(params[:id])
    @missions = @artisan.missions
    @skills = @artisan.skills
  end

  def new
    @artisan = Artisan.new
  end

  def create
    @artisan = Artisan.create(artisan_params)
    redirect_to artisans_path
  end

  def edit
    @artisan = Artisan.find(params[:id])
  end

  def update
    @artisan = Artisan.find(params[:id])
    @artisan.update(artisan_params)
    redirect_to artisans_path(@artisan)
  end

  def destroy
    @artisan = Artisan.find(params[:id])
    @artisan.destroy
    redirect_to artisans_path
  end

  private

  def artisan_params
    params.require(:artisan).permit(:name, :first_name, :tjm, :siret, :desc)
  end

end
