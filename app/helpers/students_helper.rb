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
       "Please go to the Sorting Hat to be assigned to a House."
       render :'/students/sorting_hat'
     end
   end


end
