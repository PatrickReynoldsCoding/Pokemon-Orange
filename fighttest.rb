require 'csv'
poke = CSV.read("csv/Kanto Pokemon Spreadsheet.csv")


#File.open('csv/Kanto Pokemon Spreadsheet.csv', "r") do |poke|

puts "pick your pokemon!"
choice = gets.chomp

puts poke.find {|row| row[1] == choice}




=begin require 
puts "Lets fight!"
puts "Choose your Pokemon"

puts bulbasaur.SeedyBoi.hp
puts "choose an attack!"
puts "1. tackle"
puts "2. growl"

=end


