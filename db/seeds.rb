# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Students
harry = Student.create(name: "Harry Potter", heritage:"Wizard", status:true, patronus:"Stag", house_id:1)
ron = Student.create(name: "Ron Weasley", heritage:"Wizard", status:true, patronus:"Jack Russell Terrier", house_id:1)
hermione = Student.create(name: "Hermione Granger", heritage:"Muggle-Born", status:true, patronus:"Otter", house_id:1)
malfoy = Student.create(name: "Draco Malfoy", heritage:"Wizard", status:true, patronus:"", house_id:2)


#pets
hedwig = Pet.create(name: "Hedwig", species:"owl", student_id:1)
scabbers = Pet.create(name: "Scabbers", species:"rat", student_id:2)
crookshanks = Pet.create(name: "Crookshanks", species:"cat", student_id:3)

#Teachers
snape = Teacher.create(
   name: "Severus Snape", 
   bio: "Professor Severus Snape is a Half-Blood wizard serving as Potions Master (1981-1996), Defense Against the Dark Arts professor (1996-1997), 
   and Headmaster (1997-1998) of the Hogwarts School of Witchcraft and Wizardry as well as a member of the Order of the Phoenix and a Death Eater." 
   )
minerva = Teacher.create(name: "Minerva McGonagall")
sprout = Teacher.create(name: "Pomona Sprout")
dumbledore = Teacher.create(name: "Albus Dumbledore")
flitwick = Teacher.create(name: "Filius Flitwick")

#Klasses
potions = Klass.create(name: "Potions", teacher_id: 1)
transfiguration = Klass.create(name: "Transfiguration", teacher_id: 2)
herbology = Klass.create(name: "Herbology", teacher_id: 3)
defense = Klass.create(name: "Defense Against the Dark Arts", teacher_id: 1)

gryffindor = House.create(name: "Gryffindor", description:"home of the brave", teacher_id: 4)
slytherin = House.create(name: "Slytherin", description:"home of the snakes", teacher_id: 1)
hufflepuff = House.create(name: "Hufflepuff", description:"home of the rest", teacher_id: 3)
ravenclaw = House.create(name: "Ravenclaw", description:"home of the brains", teacher_id: 5)


#Associations
potions.students << [harry, ron, hermione]
transfiguration.students << [harry, ron, hermione]
herbology.students << [harry, ron, hermione]
slytherin.students << malfoy
