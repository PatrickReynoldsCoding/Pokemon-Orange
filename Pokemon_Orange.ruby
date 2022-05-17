#Global Variabl
#methods

#no longer in use: require_relative "./pokemon.rb"
def open_crawl

    Float time_wait = 1
  
    puts "Oak : Hello there! Welcome to the world of POKEMON!"
    
    sleep(time_wait)
    
    puts "My name is OAK! People call me the POKEMON PROF!"
    
    sleep(time_wait)
    
    puts "This world is inhabited by creatures called POKEMON!"
    
    sleep(time_wait)
    
    puts "For some people, POKEMON are pets. Others use them for fights."
    
    sleep(time_wait)
    
    puts "Myself...I study POKEMON as a profession."
    
    sleep(time_wait)
    
    puts "First, what is your name?"
    
    red = gets.chomp
    
    puts "Oak : Right! So your name is #{red}!"
    
    
    
    
    sleep(time_wait)
    
    puts "This is my grandson. He's been your rival since you were a baby."
    
    sleep(time_wait)
    
    puts " ...Erm, what is his name again?"
    
    blue = gets.chomp
    
    puts "Oak : That's right! I remember now! His name is #{blue}!" 
    
    "#{red}Your very own POKEMON legend is about to unfold!"
    
    puts "A world of dreams and adventures with POKEMON awaits!"
    
    puts "Let's go!"
  
end
  
def starter_pick
  puts "Who do you want"
  puts "1. Bulbasaur"
  puts "2. Charmander"
  puts "3. Squirtle"
  
  choice = gets.chomp
  if choice.to_i == 1 then puts "You picked Bulbasaur!"
  elsif choice.to_i == 2 then puts "Goodbye."
  end
end
  
def start_menu
  puts "1. Start new game"
  puts "2. quit"

  choice = gets.chomp
  
  if choice.to_i == 1 then puts open_crawl 
  elsif choice.to_i == 2 then puts "Goodbye."
  end
end

def oaks_desk
  puts "You see 3 Pokeballs. Each is labled: 1. Bulbasaur 2. Charmander 3. Squirtle"
  
  puts "What do you want to do?"
  puts "1. Pick Partner!"
  puts "2. view stats"
  
  choice = gets.chomp
  
  if choice.to_i == 1 then puts starter_pick
  elsif choice.to_i == 2 then puts starter_stats 
  end
end


start_menu


#add catch pokemon
  #1. rand pokemon = caught
  #2 add catching screen with 4 options
#save team
#load team