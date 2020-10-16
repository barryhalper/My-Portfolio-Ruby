class AboutController < ApplicationController
  #before_action :set_about, only: [:show, :edit, :update, :destroy]

  def index
    @model = About.all.order(:order)
    @group = @model.group_by{|g| g[:about_type]}
  end


end
