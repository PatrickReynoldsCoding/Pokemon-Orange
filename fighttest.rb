require 'csv'



class Pokedex
  def initialize(csv_path)
    @pokemon_data = CSV.read('csv/Kanto Pokemon Spreadsheet.csv')
  end

  def get_stats_name(name)
    @pokemon_data.find {|row| row[0] == name }
  end

  def get_stats_id(name)
    @pokemon_data.find {|row| row[0] == name }
  end
end


pokedex = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')
randEncount = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')


randPoke = (0 + rand(151)).to_s


puts pokedex.get_stats_name(randPoke)[2]

=begin





puts "pick your pokemon!"
choice1 = gets.chomp

puts "you picked #{choice1}!" 

puts "View stats?"
puts "y/n?"
x = gets.chomp

if x == "y"
then
puts pokedex.get_stats_name(choice1)   
=begin 
Pick a cell of data to use in code:

add [2] to show specific stat
pokedex.get_stats_name(choice1)[1] => name
pokedex.get_stats_name(choice1)[2] => type I
pokedex.get_stats_name(choice1)[3] => type II
pokedex.get_stats_name(choice1)[4] => HP
pokedex.get_stats_name(choice1)[5] => ATK  

=end



