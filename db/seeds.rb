# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.create(email: 'ansar@softopstechnologies.com', password: 12345678)


#channels and tv_shows

channels = [{name: 'channel A', description: 'A'}, {name: 'Channel B', description: 'A'} ,{name: 'Channel A', description: 'A'}]

channels.each do |c|
  channnel = Channel.create(c)
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "00:01", end_time: "00:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "01:01", end_time: "01:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "02:01", end_time: "02:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "03:01", end_time: "03:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "04:01", end_time: "04:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "05:01", end_time: "05:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "06:01", end_time: "06:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "07:01", end_time: "07:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "08:01", end_time: "08:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "09:01", end_time: "09:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "10:01", end_time: "10:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "11:01", end_time: "11:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "12:01", end_time: "12:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "13:01", end_time: "13:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "14:01", end_time: "14:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "15:01", end_time: "15:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "16:01", end_time: "16:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "17:01", end_time: "17:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "18:01", end_time: "18:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "19:01", end_time: "19:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "20:01", end_time: "20:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "21:01", end_time: "21:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "22:01", end_time: "22:59")
  channnel.tv_shows.create(show_name: "#{channnel.name}_1", start_time: "23:01", end_time: "23:59")
  #(1..24).to_a.each do |show|
  #  channnel.tv_shows,create(show_name: "#{c.name}_#{show}", )
  #end
end


