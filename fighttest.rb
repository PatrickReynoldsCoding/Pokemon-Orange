require 'csv'
poke = CSV.read("csv/Kanto Pokemon Spreadsheet.csv")

class PlayerInfo
    attr_accessor :hp, :attack, :defence, :speed, :special # these symbols are the attributes for the "bulbasaur" objects we're creating below
  
   
  
    def initialize(hp, attack, defence, speed, special) # these parameters are just place names for the values we'll be entering in each new bulbasaur
      @hp = hp # these are instance variables that are usable by all methods in this class; they will be linked to the attributes  listed above. i.e @attack = :attack
      @attack = attack
      @defence = defence
      @speed = speed
      @special = special
    end
  end


puts "pick your pokemon!"
choice1 = gets.chomp

puts poke.find {|row| row[1] == choice1}

fighter1 = poke.find {|row| row[1] == choice1}



=begin require 
puts "Lets fight!"
puts "Choose your Pokemon"

puts bulbasaur.SeedyBoi.hp
puts "choose an attack!"
puts "1. tackle"
puts "2. growl"

=end


