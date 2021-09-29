
puts "Creating companies..."
c1 = Role.create(character_name: "Queen Elizabeth")
c2 = Role.create(character_name: "Hamlet")
c3 = Role.create(character_name: "King Lear")
c4 = Role.create(character_name: "Daisy Duck")


puts "Creating auditions..."
d1 = Audition.create(actor: "Sitora", phone: 5551234567, hired: false, role_id: 1)
d2 = Audition.create(actor: "Patrick", phone: 5556664444, hired: false, role_id: 3)
d3 = Audition.create(actor: "Mr. Bono", phone: 5559991111, hired: false, role_id: 2)
d4 = Audition.create(actor: "Sade", phone: 5558883333, hired: false, role_id: 4)

puts "Seeding done!"