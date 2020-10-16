class HomeController < ApplicationController
  def index
      @skills = Skill.where("home=1")
      @test = "hello"
      puts @test
  end
end
