class Article < ApplicationRecord

  def url_friendly()
      title = self.title.gsub(' & ', 'and').gsub(' ', '-')
      ##title.gsub!(/[^w \.@-]/) }{ |w| ''}

  end

end
