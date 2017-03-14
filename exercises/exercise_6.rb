require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create({
  first_name: "Bob",
  last_name: "Builder",
  hourly_rate: 10.45,
  created_at: Time.now,
  updated_at: Time.now
  })

@store1.employees.create({
  first_name: "Alan",
  last_name: "Smith",
  hourly_rate: 12.0,
  created_at: Time.now,
  updated_at: Time.now
  })

@store1.employees.create({
  first_name: "Paul",
  last_name: "Scholes",
  hourly_rate: 20.0,
  created_at: Time.now,
  updated_at: Time.now
  })

@store2.employees.create({
  first_name: "Lola",
  last_name: "Lloyd",
  hourly_rate: 11,
  created_at: Time.now,
  updated_at: Time.now
  })

@store2.employees.create({
  first_name: "Bin",
  last_name: "Bond",
  hourly_rate: 14.50,
  created_at: Time.now,
  updated_at: Time.now
  })

@store2.employees.create({
  first_name: "Rolling",
  last_name: "Stone",
  hourly_rate: 9.75,
  created_at: Time.now,
  updated_at: Time.now
  })

pp Employee.all
