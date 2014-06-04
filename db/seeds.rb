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
b10 = Budget.create!(name:'Under £30,000')

Jobstartdate.delete_all
d1 = Jobstartdate.create!(name:'Urgently')
d2 = Jobstartdate.create!(name:'Within 2 days')
d3 = Jobstartdate.create!(name:'Within 2 weeks')
d4 = Jobstartdate.create!(name:'Within 2 months')
d5 = Jobstartdate.create!(name:'2 months +')
d5 = Jobstartdate.create!(name:'I am flexible on start date')

Trade.delete_all
t1 = Budget.create!(name:'Bathroom Spcialist')
t2 = Budget.create!(name:'Bricklayer')
t2 = Budget.create!(name:'Builder')
t2 = Budget.create!(name:'Cleaner')