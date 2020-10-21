class Article < ApplicationRecord
  validates_uniqueness_of :rssguidid
  attr_accessor :feed
  def url_friendly()
    self.title.downcase.strip.gsub(' & ', 'and').gsub(/[^a-z0-9\s]/i, '').gsub!(/\s/,'-')
    ##title.gsub!(/(\`)/, "")
  end

  def read_rss
    url = Settings.rss
    open(url) do |rss|
      @feed = RSS::Parser.parse(rss)
    end

  end

  def first_image
    self.title
  end

end
