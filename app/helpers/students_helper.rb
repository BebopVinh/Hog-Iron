module StudentsHelper
   def display_pet(student)
      if student.pet
         student.pet.name
      else
         "Has no pet."
      end
   end
end
