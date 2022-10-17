class SkillsController < ApplicationController

  def new
    @skill = Skill.new
    @artisan = Artisan.find(params[:artisan_id])
  end

  def create
    artisan = Artisan.find(params[:skill][:artisan_id])
    @skill = artisan.skills.create(skill_params)
    redirect_to artisan_path(artisan)
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end


end
