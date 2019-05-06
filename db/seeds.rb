# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Students
#gryffindor
harry = Student.create(name: "Harry Potter", heritage:"Wizard", status:true, patronus:"Stag", house_id:1, bio:"The boy who lived.")
ron = Student.create(name: "Ron Weasley", heritage:"Wizard", status:true, patronus:"Jack Russell Terrier", house_id:1)
hermione = Student.create(name: "Hermione Granger", heritage:"Muggle-Born", status:true, patronus:"Otter", house_id:1)

#slytherin
malfoy = Student.create(name: "Draco Malfoy", heritage:"Wizard", status:true, patronus:"", house_id:2)
crabbe = Student.create(name: "Vincent Crabbe", heritage:"Wizard", status:true, patronus:"", house_id:2)
goyle = Student.create(name: "Gregory Goyle", heritage:"Wizard", status:true, patronus:"", house_id:2)


#hufflepuff
susan = Student.create(name: "Susan Bones", heritage:"Wizard", status:true, patronus:"", house_id:3)
ernie = Student.create(name: "Ernie Macmillan", heritage:"Wizard", status:true, patronus:"", house_id:3)
justin = Student.create(name: "Justin Finch-Fletchley", heritage:"Wizard", status:true, patronus:"", house_id:3)

#ravenclaw
luna = Student.create(name: "Luna Lovegood", heritage:"Wizard", status:true, patronus:"", house_id:3)
cho = Student.create(name: "Cho Chang", heritage:"Wizard", status:true, patronus:"", house_id:3)
michael = Student.create(name: "Michael Corner", heritage:"Wizard", status:true, patronus:"", house_id:3)


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

mcg = Teacher.create(
  name: "Minerva McGonagall",
  bio: "McGonagall is the head of Gryffindor. She is a cat animagus with square markings around the eyes which are similar to her spectacles. She once worked at the department of magcial law enforcement at the Ministry of Magic. Her mother did not tell her father that she was a witch until McGonagall was outed by her acceptance letter to Hogwarts."
)

sprout = Teacher.create(
  name: "Pomona Sprout",
  bio: "Sprout is the head of Hufflepuff, teaches Herbology, is fairly easy going."
)

dumbledore = Teacher.create(
  name: "Albus Dumbledore",
  bio: "Dumbledore is the headmaster of Hogwarts, especially fond of candies, particularly lemon sorbets and lemon drops, as well as chamber music and ten-pin bowling. Former teacher of Transfiguration, he has dedicated to most of his life to outwitting his former student Tom Marvolo Riddle, a.k.a. Voldemort. Was once friends with Gellert Grindelwald but defeated him in their famous 1945 duel."
)

flitwick = Teacher.create(
  name: "Filius Flitwick",
  bio: "Flitwick is the head of Ravenclaw. He teaches charms, was once a champion at dueling and according to J.K. Rowling, has goblin heritage.")

hooch = Teacher.create(
  name: "Rolanda Hooch",
  bio: "Madame Hooch teaches flying to first-years."
)

hagrid = Teacher.create(
  name: "Rubeus Hagrid",
  bio: "Rubeus Hagrid is half-giant and teaches Care of Magical Creatures. He attended Hogwarts but was expelled in 1943 after being framed by fellow student and prefect Tom Marvolo Riddle for the opening of the Chamber of Secrets. "
)

trelawney = Teacher.create(
  name: "Sybil Trelawney",
  bio: "Sybil Trelawey, diviniation teacher, has made two true prophecies in her lifetime. First, she predicted that either Harry Potter or Neville Longbottom would have the powers 'that the Dark Lord knows not'. Second, she predicted that Peter Pettigrew would return to Voldemort."
)

remus = Teacher.create(
  name: "Remus Lupin",
  bio: "Remus Lupin, a werewolf, briefly teaches Defense Against the Dark Arts but has a lot of trouble managing his alter ego as a werewolf when the moon is full."
)


#Klasses
potions = Klass.create(name: "Potions", teacher_id: 1)
transfiguration = Klass.create(name: "Transfiguration", teacher_id: 2)
herbology = Klass.create(name: "Herbology", teacher_id: 3)
defense = Klass.create(name: "Defense Against the Dark Arts", teacher_id: 1)
creatures = Klass.create(name: "Care of Magical Creatures", teacher_id: 6)
divination = Klass.create(name: "Divination", teacher_id: 7)
charms = Klass.create(name: "Charms", teacher_id: 5)

#Houses
gryffindor = House.create(name: "Gryffindor", description:"home of the brave", teacher_id: 2)
slytherin = House.create(name: "Slytherin", description:"home of the snakes", teacher_id: 1)
hufflepuff = House.create(name: "Hufflepuff", description:"home of the rest", teacher_id: 3)
ravenclaw = House.create(name: "Ravenclaw", description:"home of the brains", teacher_id: 5)

#Associations
potions.students << [harry, ron, hermione]
transfiguration.students << [harry, ron, hermione]
herbology.students << [harry, ron, hermione]
