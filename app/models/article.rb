class Article < ApplicationRecord
  validates_uniqueness_of :rssguidid
  attr_accessor :feed, :html_fragment


  def read_rss
    url = Settings.rss
    open(url) do |rss|
      @feed = RSS::Parser.parse(rss)
    end
  end

  def rss_item(item)
    @html_fragment = Nokogiri::HTML.fragment(item.content_encoded)
    clean_string = Sanitize.fragment(@html_fragment)
    feed_item = {
        title: item.title.chomp,
        content: item.content_encoded,
        image: @html_fragment.at('img').attribute("src"),
        clean_string: clean_string,
        summary: Utilities::Strings.truncate_words(clean_string, 155).chomp,
        link: Utilities::Strings.url_friendly(item.title).chomp,
        guid: item.guid.content,
        published: item.date


    }
  end






end
