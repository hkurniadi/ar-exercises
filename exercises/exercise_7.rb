require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask for a store name from user
@user_input = gets.chomp
# Create the store instance using just name
@user_store = Store.create({name: @user_input})
puts @user_store.errors.messages
# {:annual_revenue=>["is not a number"], :mens_apparel=>["Has to be a men's or women's apparel store"]}

# Create the store instance using name and annual revenue
@user_store = Store.create({name: @user_input, annual_revenue: 400000})
puts @user_store.errors.messages
# {:mens_apparel=>["Has to be a men's or women's apparel store"]}

# Create the store instance using name, annual revenue, and men's apparel
@user_store = Store.create({name: @user_input, annual_revenue: 400000, mens_apparel: true})
puts @user_store.errors.messages
# {}
