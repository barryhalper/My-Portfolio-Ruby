class AboutController < ApplicationController
  #before_action :set_about, only: [:show, :edit, :update, :destroy]

  def index
    @about = About.all
    #@group = @about.group_by{|g| g[:skills_type]}
  end


end
