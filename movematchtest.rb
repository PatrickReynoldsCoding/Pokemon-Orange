require 'csv'



class MoveMatch
  def initialize(cvs_path)
    @move_data = CSV.read('csv/Pokemon Moves.csv')
  end

  def get_move_info(name)
    @move_data.find {|row| row[1] == name }
  end

 


end

moveMatch = MoveMatch.new('csv/Pokemon Moves.csv')

puts moveMatch.get_move_info("Dig")[5]

