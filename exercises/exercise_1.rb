require_relative '../setup'

puts "Exercise 1"
puts "----------"

Store.create({
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true,
  created_at: Time.now,
  updated_at: Time.now
  })

Store.create({
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true,
  created_at: Time.now,
  updated_at: Time.now
  })

Store.create({
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false,
  created_at: Time.now,
  updated_at: Time.now
  })


puts "Number of stores #{Store.count}"
