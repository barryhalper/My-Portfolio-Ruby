class ApplicationController < ActionController::Base

  #attr_accessor @show_nav
  before_action :set_nav
  def set_nav
    @nav_class = controller_name == "articles" ? "navbar-background": ""
  end



end
