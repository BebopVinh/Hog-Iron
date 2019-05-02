class House < ApplicationRecord
  has_many :students
  belongs_to :teacher, optional: true

  def slug
    self.name.downcase.strip.gsub(/[^a-z0-9\-\b]/, "-")
  end

  def self.find_by_slug(name)
    House.find{|house| house.slug == house}
  end
  
end
