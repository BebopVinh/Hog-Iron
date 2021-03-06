class Student < ApplicationRecord
  has_many :pets
  belongs_to :house, optional: true
  has_many :student_klasses
  has_many :klasses, through: :student_klasses
  validates :name, presence: { message: ": All wizards need names" }, uniqueness: { message: ": This wizard is already enrolled! "}
  validates :heritage, presence: true
  #validates :username, presence: true, uniqueness: true
  #has_secure_password

   def teacher(klass)
     klass.teacher
   end

   def all_teachers
     self.klasses.map(&:teacher).uniq
   end

   def klasses_names
     self.klasses.map(&:name).sort.join(", ")
   end

   def self.heritages
     @heritages = %w(Wizard-Born Half-Blood Muggle-Born Irrelevant)
   end

   def traits_by_house
     @traits_by_house = {
        Gryffindor: ["Brave", "Chivalrous"],
        Slytherin: ["Ambitious", "Cunning", "Shrewd"],
        Ravenclaw: ["Academic", "Intellectual"],
        Hufflepuff: ["Hard Working", "Loyal"]
      }
    end

    def all_traits
      @all_traits = traits_by_house.values.flatten
    end

   def status?
      !!self.status ? "I'm sooo alive right now!!" : "I'm totally dead... RIP."
   end
end
