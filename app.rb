require "sinatra"
require "sinatra/reloader"



class PokemonOrange < Sinatra::Base

get '/' do
  erb :index
end

get '/newgame' do
  erb :newgame
end


end