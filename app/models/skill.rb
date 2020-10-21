class Skill < ApplicationRecord

  def skills_cache
    Rails.cache.fetch("skills_cache", expires_in: 1.hour) do
       Skill.where("home=1")
    end
  end
end
