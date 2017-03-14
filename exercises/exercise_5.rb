require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenues = Store.sum("annual_revenue")
puts "Total revenues from all stores #{@total_revenues}"

@average_annual = Store.average("annual_revenue")
puts "Average revenues from all stores #{@average_annual}"

@number_of_high_sales_stores = Store.where("annual_revenue > 1000000").count

puts "There are #{@number_of_high_sales_stores} stores that generate more than $1M"
