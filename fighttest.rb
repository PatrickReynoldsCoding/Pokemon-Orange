require 'csv'



class Pokedex
  def initialize(csv_path)
    @pokemon_data = CSV.read('csv/Kanto Pokemon Spreadsheet.csv')
  end

  def get_stats(name)
    @pokemon_data.find {|row| row[1] == name }
  end
end

class Random_encounter 
  def initialize(csv_path)
    @pokemon_data = CSV.read('csv/Kanto Pokemon Spreadsheet.csv')
  end

  def get_stats(id)
    @pokemon_data.find {|row| row[0] == id }
  end
end
pokedex = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')
randEncount = Random_encounter.new('csv/Kanto Pokemon Spreadsheet.csv')

randPoke = 0 + rand(151)
puts randEncount.get_stats(randPoke)

=begin
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
=end


puts "pick your pokemon!"
choice1 = gets.chomp

puts "you picked #{choice1}!" 

puts "View stats?"
puts "y/n?"
x = gets.chomp

if x == "y"
then
puts pokedex.get_stats(choice1)   
=begin add [2] to show specific stat
pokedex.get_stats(choice1)[1] => name
pokedex.get_stats(choice1)[2] => type I
pokedex.get_stats(choice1)[3] => type II
pokedex.get_stats(choice1)[4] => HP
pokedex.get_stats(choice1)[5] => ATK  

=end
end


=begin require 
puts "Lets fight!"
puts "Choose your Pokemon"

puts bulbasaur.SeedyBoi.hp
puts "choose an attack!"
puts "1. tackle"
puts "2. growl"

=end


