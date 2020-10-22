class HomeController < ApplicationController
  def index
      skills_class = Skill.new
      #skills_class.inspect

      @skills =  Skill.where("home=1").select(:name, :desc, :image)

  end

  # GET /something/:id[.type]
  def cv
    # .. set @pdf variable
    @pdf = "#{Dir.pwd}/tmp/doc/Barry-Halper-CV.pdf"
    send_file @pdf, type: 'application/pdf', disposition: 'inline'


  end

end
