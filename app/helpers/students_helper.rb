module StudentsHelper
   def display_pet(student)
      if student.pet
         student.pet.name
      else
         "Has no pet."
      end
   end

   def display_house(student)
     if student.house
       link_to student.house.name, house_path(student.house)
     else
       "Please go to the sorting hat to find your house. (Add link/view)"
     end
   end
end
