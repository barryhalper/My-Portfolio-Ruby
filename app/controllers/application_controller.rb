class ApplicationController < ActionController::Base

  #attr_accessor @show_nav
  before_action :set_nav
  def set_nav
    @nav_class = controller_name == "articles" ? "navbar-background": ""
  end

  def after_sign_in_path_for(resource)
    admin_root_path
  end

end
