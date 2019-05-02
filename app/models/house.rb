class House < ApplicationRecord
  has_many :students
  belongs_to :teacher, optional: true
end
