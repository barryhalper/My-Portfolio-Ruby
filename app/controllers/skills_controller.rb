class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all
    @group = @skills.group_by{|g| g[:skills_type]}


  end



    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:name, :desc, :image, :type, :home, :home)
    end
end
