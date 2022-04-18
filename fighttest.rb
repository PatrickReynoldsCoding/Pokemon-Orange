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

class MoveMatch
  def initialize(cvs_path)
    @move_data = CSV.read('csv/Pokemon Moves.csv')
  end

  def get_move_info(name)
    @move_data.find {|row| row[1] == name }
  end
end

$moveMatch = MoveMatch.new('csv/Pokemon Moves.csv')

$pokedex = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')
randEncount = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')

puts "pick your pokemon!"
$choice1 = gets.chomp

puts "you picked #{$pokedex.get_stats_name($choice1)[1]}(HP:#{$pokedex.get_stats_name($choice1)[4]})(Atk:#{$pokedex.get_stats_name($choice1)[5]})!" 

partner1 = $pokedex.get_stats_name($choice1)

$randpoke = (0 + rand(151)).to_s

puts "Oh no!"
puts "a wild #{$pokedex.get_stats_id($randpoke)[1]}(HP:#{$pokedex.get_stats_id($randpoke)[4]})(Atk:#{$pokedex.get_stats_id($randpoke)[5]}) appeared!"

#pat1Atk = $pokedex.get_stats_name($choice1)[5] /3


def movePick(x,y)
  move1 = x.get_stats_name(y)[10]
  move2 = x.get_stats_name(y)[11]
  move3 = x.get_stats_name(y)[12]
  move4 = x.get_stats_name(y)[13]
  puts ""
  puts "Pick a move"
  puts "1. #{move1} (#{$moveMatch.get_move_info(move1)[5]})" 
  puts "2. #{move2} (#{$moveMatch.get_move_info(move2)[5]})" 
  puts "3. #{move3} (#{$moveMatch.get_move_info(move3)[5]})" 
  puts "4. #{move4} (#{$moveMatch.get_move_info(move4)[5]})" 
input = gets.chomp

input case 
  when 1 
  puts "#{$choice1} used #{move1}!"
  atk = $moveMatch.get_move_info(move1)[5]
  $cpu_hp -= atk 
  puts $cpu_hp
  else
  error
  end
end



def newRound
$my_hp = $pokedex.get_stats_name($choice1)[4]
$cpu_hp = $pokedex.get_stats_id($randpoke)[4]

puts "What do you want to do?"
puts""
puts "#{$pokedex.get_stats_name($choice1)[1]}(HP:#{$pokedex.get_stats_name($choice1)[4]})(Atk:#{$pokedex.get_stats_name($choice1)[5]})"

  puts "1. Attack"
  puts "2. Pokemon"
  puts "3. Bag"
  puts "4. Run"
  roundInput = gets.chomp

  if roundInput == "1"
    then puts movePick($pokedex, $choice1)
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



