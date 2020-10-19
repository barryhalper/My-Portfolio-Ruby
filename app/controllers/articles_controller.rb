class ArticlesController < ApplicationController
  #before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.where("link ='#{params[:title]}'").first
  end







    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:content, :image, :link, :summary, :published, :rssguidid, :title)
    end
end
