require 'csv'

$my_hp = 0 
$cpu_hp = 0


class Pokedex
  def initialize(csv_path)
    @pokemon_data = CSV.read(csv_path)
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
    @move_data = CSV.read(cvs_path)
  end

  def get_move_info(name)
    @move_data.find {|row| row[1] == name }
  end
end

$moveMatch = MoveMatch.new('csv/Pokemon Moves.csv')

$pokedex = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')
randEncount = Pokedex.new('csv/Kanto Pokemon Spreadsheet.csv')

puts "pick your pokemon!"
$choice1 = gets.chomp.capitalize

puts "you picked #{$pokedex.get_stats_name($choice1)[1]}(HP:#{$pokedex.get_stats_name($choice1)[4]})(Atk:#{$pokedex.get_stats_name($choice1)[5]})!" 

partner1 = $pokedex.get_stats_name($choice1)

$randpoke = (0 + rand(151)).to_s

puts "Oh no!"
puts "a wild #{$pokedex.get_stats_id($randpoke)[1]}(HP:#{$pokedex.get_stats_id($randpoke)[4]})(Atk:#{$pokedex.get_stats_id($randpoke)[5]}) appeared!"

#pat1Atk = $pokedex.get_stats_name($choice1)[5] /3


def move_pick(x,y)
  move1 = [x.get_stats_name(y)[10], $moveMatch.get_move_info(x.get_stats_name(y)[10])[5]]
  move2 = x.get_stats_name(y)[11]
  move3 = x.get_stats_name(y)[12]
  move4 = x.get_stats_name(y)[13]
  puts ""
  puts "Pick a move"
  puts "1. #{move1}" 
  puts "2. #{move2} (#{$moveMatch.get_move_info(move2)[5]})" 
  puts "3. #{move3} (#{$moveMatch.get_move_info(move3)[5]})" 
  puts "4. #{move4} (#{$moveMatch.get_move_info(move4)[5]})" 
chosen_move = gets.chomp

puts "enemy HP:#{$cpu_hp}"

if chosen_move == "1"
    then $cpu_hp =-  move1[1]
  else
    "error"
end
puts "you attack!"
puts "enemy HP: #{$cpu_hp}"




end

proc_hp_edit = -> {$my_hp =+ $pokedex.get_stats_name($choice1)[4]}
proc_cpu_hp_edit = -> {$cpu_hp =+ $pokedex.get_stats_id($randpoke)[4]}


def new_round
  puts "What do you want to do?"
  puts""
  puts "#{$pokedex.get_stats_name($choice1)[1]}(HP:#{$pokedex.get_stats_name($choice1)[4]})(Atk:#{$pokedex.get_stats_name($choice1)[5]})"

  puts "1. Attack"
  puts "2. Pokemon"
  puts "3. Bag"
  puts "4. Run"
  round_input = gets.chomp

  if round_input == "1"
    then puts move_pick($pokedex, $choice1)
    else 
      puts "error"
  end

  if $cpu_hp >= 1 
    then move_pick
  else
    puts "You defeated the enemy!"
  end




end

new_round

#test

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



