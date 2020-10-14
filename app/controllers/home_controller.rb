class HomeController < ApplicationController
  def index
    @my_skills = Skill.where(home: true)
  end
end
