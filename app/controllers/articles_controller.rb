class ArticlesController < ApplicationController


  # GET /articles
  # GET /articles.json
  def index

    @articles = Article.all.select(:title, :published, :link, :image)

  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.where("link ='#{params[:title]}'").first
  end








end
