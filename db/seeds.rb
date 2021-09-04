# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
TimeSlot.destroy_all
Coach.destroy_all
WeekDay.destroy_all
User.destroy_all

user = User.create(name: 'John Million')

names = ['Christy Schumm', 'Natalia Stanton Jr.', 'Nola Murazik V', "Elyssa O'Kon", 'Dr. Geovany Keebler']
coaches = names.map { |name| Coach.create(name: name) }

days = ['Monday', 'Tuesday', 'Wednsday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
days = days.map { |day| WeekDay.create(day: day) }

hr = 4
for i in 1..17 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[0].time_slots << time_slot
    days[0].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..16 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[0].time_slots << time_slot
    days[1].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 4
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[0].time_slots << time_slot
    days[3].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 2
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[0].time_slots << time_slot
    days[4].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[1].time_slots << time_slot
    days[1].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 6
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[1].time_slots << time_slot
    days[2].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 4
for i in 1..12 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[1].time_slots << time_slot
    days[5].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[1].time_slots << time_slot
    days[6].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 0
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[2].time_slots << time_slot
    days[0].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[2].time_slots << time_slot
    days[1].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 0
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[2].time_slots << time_slot
    days[2].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 0
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[2].time_slots << time_slot
    days[5].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = -1
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[2].time_slots << time_slot
    days[6].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 4
for i in 1..12 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[0].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 1
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[1].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 1
for i in 1..10 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[2].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..8 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[4].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 4
for i in 1..14 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[5].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 3
for i in 1..4 do
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[3].time_slots << time_slot
    days[6].time_slots << time_slot
    hr += 1 if i % 2 == 0
end

hr = 2
for i in 1..20 do
    next if i > 14 && i < 17
    time_slot = i % 2 == 0 ? TimeSlot.new(start: "#{hr.to_s}:30", end: "#{(hr + 1).to_s}") : TimeSlot.new(start: "#{hr.to_s}", end: "#{hr.to_s}:30")
    coaches[4].time_slots << time_slot
    days[3].time_slots << time_slot
    hr += 1 if i % 2 == 0
end