class MissionsController < ApplicationController

  before_action :authenticate_user!, only: :index

  def index 
    @missions = Mission.where(artisan_id: params[:artisan_id])
    @artisan =  Artisan.find(params[:artisan_id])
  end 
  
end
