class Student < ApplicationRecord
   has_many :student_klasses
   has_many :klasses, through: :student_klasses
   validates :name, presence: { message: ": All wizards need names" }, uniqueness: { message: ": This wizard is already enrolled! "}
   validates :heritage, presence: true

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
     @heritages = %w(Pure-Blood Half-Blood Muggle-Born Squib Muggle)
   end

   def alive?
      !!self.alive ? "I'm sooo alive right now!!" : "I'm totally dead... RIP."
   end
end
