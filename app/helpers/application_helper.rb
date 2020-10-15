module ApplicationHelper
  BACKGROUND_PATH = "/image/background/"

  def background_image(source)
    image_path = Settings.live_site_path + BACKGROUND_PATH
    srcset = { "#{image_path}#{source}-wide.jpg" => "1980w", "#{image_path}#{source}.jpg" => "1024w",  "#{image_path}#{source}-medium.jpg" => "640w",
               "#{image_path}#{source}-small.jpg" => "320w"}

    image_tag(:"#{image_path}#{source}-small.jpg", srcset:srcset, :sizes => "100vw", class: "img-fluid" )
  end

  def title(text)
    content_for :title, text
  end

  def meta_tag(tag, text)
    content_for :"meta_#{tag}", text
  end

  def yield_meta_tag(tag, default_text='')
    content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
  end

end
