require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@mens_stores = Store.where(mens_apparel: true)
# pp @mens_stores

@mens_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")
# @womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", [true], [1000000])
# pp @womens_stores
