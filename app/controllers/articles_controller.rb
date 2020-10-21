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


   def new
     article = Article.new
     article.read_rss

     article.feed.items.each do |item|
       my_article = Article.new(:title => item.title)
       Article.create(:title => item.title, :content => item.content_encoded, :rssguidid => item.guid.content, :link =>my_article.url_friendly, :published => item.published)
       ##puts item
     end

     render layout: false
  end







end
