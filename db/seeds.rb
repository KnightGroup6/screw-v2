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


Job.delete_all
#Aerial / Network Specialist 
j1 = Job.create!(name:'Digital Home Network')
j2 = Job.create!(name:'Sound & Audio Visual Installation')
j3 = Job.create!(name:'Burgular, Security & Intruder Alarm')
j4 = Job.create!(name:'CCTV')
j5 = Job.create!(name:'Fire Alarm System')
j6 = Job.create!(name:'Aerial & Satelite Dish')

#Bathroom Specialist
j7 = Job.create!(name:'Bathroom Design')
j8 = Job.create!(name:'Bathroom Installation')
j9 = Job.create!(name:'Complete Bathroom Refurbishment')
j10 = Job.create!(name:'Bathroom Repair')

#Bricklayer
j11 = Job.create!(name:'Garden Wall')
j12 = Job.create!(name:'Chimney Building / Repair')
j13 = Job.create!(name:'Repointing')
j14 = Job.create!(name:'Stonework / Stone Cladding')

#Builer
j15 = Job.create!(name:'Cellar & Basement Conversion')
j16 = Job.create!(name:'Conservatory')
j17 = Job.create!(name:'Garage Conversion')
j18 = Job.create!(name:'Internal Renovation / Reconfiguration')
j19 = Job.create!(name:'Loft Conversion')
j20 = Job.create!(name:'Porch Canopy')
j21 = Job.create!(name:'Staircases - Metal')
j22 = Job.create!(name:'Staircases - Wooden')
j23 = Job.create!(name:'Garage / Outbuilding Contrustion')
j24 = Job.create!(name:'Log Cabins / Timber Framed Building')
# j12 = Job.create!(name:'Chimney Building / Repair')
j25 = Job.create!(name:'Structural Steelwork')
j26 = Job.create!(name:'Underpinning / Foundation')

#Carpenter / Joiner
# j22 = Job.create!(name:'Staircases - Wooden')
j27 = Job.create!(name:'Wooden Doors - Internal')
j28 = Job.create!(name:'Wooden Shutter')
j29 = Job.create!(name:'Floor Sanding & Finishing')
j30 = Job.create!(name:'Laminate Flooring')
j31 = Job.create!(name:'Solid Timber Flooring')
j32 = Job.create!(name:'Bespoke Furniture Design & Build')
j33 = Job.create!(name:'Fitted Bedroom')
j34 = Job.create!(name:'General Fitted Furniture')
j35 = Job.create!(name:'Bespoke Kitchen Furniture')
j36 = Job.create!(name:'Wooden Decking')
j37 = Job.create!(name:'Garden Shed / Playhouse')
# j24 = Job.create!(name:'Log Cabins / Timber Framed Building')
j38 = Job.create!(name:'Fascians / Soffits / Cladding - Wooden')
j39 = Job.create!(name:'Wooden Casement Window')
j40 = Job.create!(name:'Wooden Doors - External')
j41 = Job.create!(name:'Wooden Sash Window')
j42 = Job.create!(name:'Flat Pack Furniture Assembly')

#Cleaner
j43 = Job.create!(name:'Carpet Cleaning')
j44 = Job.create!(name:'Commercial Cleaning')
j45 = Job.create!(name:'Demostic House Cleaning')

#Drainage Specialist
j46 = Job.create!(name:'Drians & Sewerage')
j47 = Job.create!(name:'Septic Tanks & Soakaways')

#Driveway Services
j48 = Job.create!(name:'Brick / Block Paving')

#Electrician
j49 = Job.create!(name:'Air Conditioning')
j50 = Job.create!(name:'Lighting & Power - Internal')
j51 = Job.create!(name:'Electrician Inspecting / Testing')
j52 = Job.create!(name:'Under Floor Heating - Electrician System')
# j6 = Job.create!(name:'Aerial & Satelite Dish')
j53 = Job.create!(name:'Lighting & Power - External')
j54 = Job.create!(name:'Access Control / Door Entry')

#Flooring Specialist
# j52 = Job.create!(name:'Under Floor Heating - Electrician System')
j55 = Job.create!(name:'Carpet Laying ')
# j29 = Job.create!(name:'Floor Sanding & Finishing')
j56 = Job.create!(name:'Laminate Flooring')
j57 = Job.create!(name:'Linoleum Flooring')
j58 = Job.create!(name:'Plastic / Rubber Flooring')
j59 = Job.create!(name:'Polished Concrete')
j60 = Job.create!(name:'Screeding')
# j31 = Job.create!(name:'Solid Timber Flooring')
j61 = Job.create!(name:'Under Floor Heating - Water System')
j62 = Job.create!(name:'Floor Tiling')
j63 = Job.create!(name:'External Tiling')
j64 = Job.create!(name:'Stone / Concrete Paving')
# j36 = Job.create!(name:'Wooden Decking')


Trade.delete_all
t1 = Trade.create!(name:'Aerial / Network Specialist')
t1.jobs << j1 << j2 << j3 << j4 << j5 << j6
t2 = Trade.create!(name:'Bathroom Specialist')
t2.jobs << j7 << j8 << j9 << j10
t3 = Trade.create!(name:'Bricklayer')
t3.jobs << j11 << j12 << j13 << j14
t4 = Trade.create!(name:'Builder')
t4.jobs << j15 << j16 << j17 << j18 << j19 << j20 << j21 << j22 << j23 << j24 << j12 << j25 << j26
t5 = Trade.create!(name:'Carpenter / Joiner')
t5.jobs << j22 << j27 << j28 << j29 << j30 << j31 << j32 << j33 << j34 << j35 << j36 << j37 << j24 << j38 << j39 << j40 << j41 << j42
t6 = Trade.create!(name:'Cleaner')
t6.jobs << j43 << j44 << j45 
t7 = Trade.create!(name:'Drinage Specialist')
t7.jobs << j46 << j47
t8 = Trade.create!(name:'Driveway Services')
t8.jobs << j48
t9 = Trade.create!(name:'Electrician')
t9.jobs << j49 << j50 << j51 << j52 << j6 << j53 << j54
t10 = Trade.create!(name:'Flooring Specialist')
t10.jobs << j52 << j55 << j29 << j56 << j57 << j58 << j59 << j60 << j31 << j61 << j62 << j63 << j64 << j36


Jobstartdate.delete_all
s1 = Jobstartdate.create!(name:'Urgently')
s2 = Jobstartdate.create!(name:'Within 2 days')
s3 = Jobstartdate.create!(name:'Within 2 weeks')
s4 = Jobstartdate.create!(name:'Within 2 months')
s5 = Jobstartdate.create!(name:'2 months+')
s6 = Jobstartdate.create!(name:'I am flexible on start date')


Distance.delete_all
d1 = Distance.create!(name:'5 miles')
d2 = Distance.create!(name:'10 miles')
d3 = Distance.create!(name:'20 miles')
d4 = Distance.create!(name:'30 miles')
d5 = Distance.create!(name:'50 miles')
d6 = Distance.create!(name:'50 miles')


Businesstype.delete_all
bt1 = Businesstype.create!(name: 'Sole Trader')
bt2 = Businesstype.create!(name: 'Limited Company')
bt3 = Businesstype.create!(name: 'Partnership')
bt4 = Businesstype.create!(name: 'Limited Liability Partnership')


Title.delete_all
tt1 = Title.create!(name: 'Mr')
tt2 = Title.create!(name: 'Miss')
tt3 = Title.create!(name: 'Mrs')
tt4 = Title.create!(name: 'Ms')
tt5 = Title.create!(name: 'Dr')
tt6 = Title.create!(name: 'Prof')


Trademanrole.delete_all
tr1 = Trademanrole.create!(name: 'I am the sole tradesman')
tr2 = Trademanrole.create!(name: 'I am a sole tradesman who works with others')
tr3 = Trademanrole.create!(name: 'I manage subcontractors')
tr4 = Trademanrole.create!(name: 'I am not a tradesman, but the manager of the Screw Account')


# Application.delete_all
# a1 = Application.create!( firstname: 'richill', lastname: 'tamakloe', phone: '02089587999', email: 'richillgmail.com', job_id: j1.id, trade_id: t1.id, budget_id: b3.id, jobstartdate_id: s3.id)



