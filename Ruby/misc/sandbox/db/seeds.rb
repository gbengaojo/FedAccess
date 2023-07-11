# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

department_one = Department.create(name: 'Sales')

department_two = Department.create(name: 'Marketing')
Department.create(name: 'Financial')

Employee.create([{name: "Mike", phone: "1111111111", department: department_one},
                 {name: "Nina", phone: "222222222", department: department_one},
                 {name: "John", phone: "333333333", department: department_one}
])
Employee.create(name: "Tom", phone: "111111111", department: department_two)
