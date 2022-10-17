class SkillsController < ApplicationController

  def new
    @skill = Skill.new
    @artisan = Artisan.find(params[:artisan_id])
  end

  def create
    @skill = Skill.create(skill_params)
    redirect_to artisans_path(params[:skill][:artisan])
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end


end
