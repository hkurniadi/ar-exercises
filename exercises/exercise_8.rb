require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store1.employees.create({
  first_name: "Hone",
  last_name: "Jack",
  hourly_rate: 55,
  created_at: Time.now,
  updated_at: Time.now
  })

pp Employee.all
