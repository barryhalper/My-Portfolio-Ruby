module Utilities
  module Strings
    def self.url_friendly(title)
      title.downcase.strip.gsub(' & ', 'and').gsub(/[^a-z0-9\s]/i, '').gsub!(/\s/,'-')
    end

    def self.strip_html(html_string)
      html_string.gsub(%r{</?[^>]+?>}, '')
    end

    def self.truncate_words(text, length = 300, end_string = '…')
      if text.length > length
        words =  text.split(" ").first(length).join(" ")
        words =  "#{text[0..length]}#{end_string}"
      else
        text
      end
    end
  end
end
