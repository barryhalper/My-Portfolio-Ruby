class Article < ApplicationRecord

  def url_friendly()
    title = self.title.downcase.strip.gsub(' & ', 'and').gsub(/[^a-z0-9\s]/i, '').gsub!(/\s/,'-')

    ##title.gsub!(/(\`)/, "")

  end



end
