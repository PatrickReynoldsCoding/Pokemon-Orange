require 'csv'



class Pokedex
  def initialize(csv_path)
    @pokemon_data = CSV.read('csv/Kanto Pokemon Spreadsheet.csv')
  end

  def get_stats_name(name)
    @pokemon_data.find {|row| row[1] == name }
  end

  def get_stats_id(name)
    @pokemon_data.find {|row| row[0] == name }
  end
end


$pokedex = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')
randEncount = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')

puts "pick your pokemon!"
$choice1 = gets.chomp

puts "you picked #{$pokedex.get_stats_name($choice1)[1]}(HP:#{$pokedex.get_stats_name($choice1)[4]})(Atk:#{$pokedex.get_stats_name($choice1)[5]})!" 

partner1 = $pokedex.get_stats_name($choice1)

randPoke = (0 + rand(151)).to_s

puts "Oh no!"
puts "a wild #{$pokedex.get_stats_id(randPoke)[1]}(HP:#{$pokedex.get_stats_id(randPoke)[4]})(Atk:#{$pokedex.get_stats_id(randPoke)[5]}) appeared!"

#pat1Atk = $pokedex.get_stats_name($choice1)[5] /3


def moveList(x,y)
  puts ""
  puts "Pick a move"
  puts "1. #{x.get_stats_name(y)[10]}" 
  puts "2. #{x.get_stats_name(y)[11]}" 
  puts "3. #{x.get_stats_name(y)[12]}" 
  puts "4. #{x.get_stats_name(y)[13]}" 
end



def newRound
  puts "1. Attack"
  puts "2. Pokemon"
  puts "3. Bag"
  puts "4. Run"
  roundInput = gets.chomp

  if roundInput == "1"
    then puts moveList($pokedex, $choice1)
    else 
      puts "error"
  end

end

puts newRound


=begin





puts "pick your pokemon!"
$choice1 = gets.chomp

puts "you picked #{$choice1}!" 

puts "View stats?"
puts "y/n?"
x = gets.chomp

if x == "y"
then
puts $pokedex.get_stats_name($choice1)   
=begin 
Pick a cell of data to use in code:

add [2] to show specific stat
$pokedex.get_stats_name($choice1)[1] => name
$pokedex.get_stats_name($choice1)[2] => type I
$pokedex.get_stats_name($choice1)[3] => type II
$pokedex.get_stats_name($choice1)[4] => HP
$pokedex.get_stats_name($choice1)[5] => ATK  

=end



