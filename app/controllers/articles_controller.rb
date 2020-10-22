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
       feed_item = article.rss_item(item)
       Article.create(:title => feed_item[:title], :image=> feed_item[:image], :summary=> feed_item[:summary], :content => feed_item[:content], :rssguidid => feed_item[:guid], :link =>feed_item[:link], :published => feed_item[:published])

     end

     render layout: false
  end







end
