# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Budget.delete_all
b1 = Budget.create!(name:'Under £100')
b2 = Budget.create!(name:'Under £250')
b3 = Budget.create!(name:'Under £500')
b4 = Budget.create!(name:'Under £1,000')
b5 = Budget.create!(name:'Under £2,000')
b6 = Budget.create!(name:'Under £4,000')
b7 = Budget.create!(name:'Under £8,000')
b8 = Budget.create!(name:'Under £15,000')
b9 = Budget.create!(name:'Under £30,000')
b10 = Budget.create!(name:'Over £30,000')

Trade.delete_all
t1 = Trade.create!(name:'Aerial / Network Specialist')
t2 = Trade.create!(name:'Bathroom Specialist')
t3 = Trade.create!(name:'Bricklayer')
t4 = Trade.create!(name:'Builder')
t5 = Trade.create!(name:'Carpenter / Joiner')
t6 = Trade.create!(name:'Cleaner')
t7 = Trade.create!(name:'Drinage Specialist')
t8 = Trade.create!(name:'Driveway Services')
t9 = Trade.create!(name:'Electrician')
t10 = Trade.create!(name:'Flooring Specialist')