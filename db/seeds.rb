# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Students
harry = Student.create(name: "Harry Potter", heritage:"Wizard", status:true, patronus:"Stag")
ron = Student.create(name: "Ron Weasley", heritage:"Wizard", status:true, patronus:"Jack Russell Terrier")
hermione = Student.create(name: "Hermione Granger", heritage:"Muggle-Borned", status:true, patronus:"Otter")

#Teachers
snape = Teacher.create(name: "Severus Snape")
minerva = Teacher.create(name: "Minerva McGonagall")
sprout = Teacher.create(name: "Pomona Sprout")
dumbledore = Teacher.create(name: "Albus Dumbledore")


#Klasses
potions = Klass.create(name: "Potions", teacher_id: 1)
transfiguration = Klass.create(name: "Transfiguration", teacher_id: 2)
herbology = Klass.create(name: "Herbology", teacher_id: 3)


#Associations
potions.students << [harry, ron, hermione]
transfiguration.students << [harry, ron, hermione]
herbology.students << [harry, ron, hermione]
