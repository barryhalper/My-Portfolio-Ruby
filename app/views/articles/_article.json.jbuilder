json.extract! article, :id, :content, :image, :link, :summary, :published, :rssguidid, :title, :created_at, :updated_at
json.url article_url(article, format: :json)
