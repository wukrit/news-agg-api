class Story < ApplicationRecord

  def self.sort_by_newest
    self.all.sort_by{|story| Time.at(story.time.to_i)}.reverse
  end
end
