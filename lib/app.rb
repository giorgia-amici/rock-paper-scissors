require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'logic'

GAME = Game.new
LOGIC = Logic.new


class App < Sinatra::Base

set :public, Proc.new {File.join(root, "..", "public_dir")}
set :views, Proc.new {File.join(root, "..", "views")}
enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = Player.new(params[:player1])
    GAME.add_player(@player1)
    session[:game] = GAME
    erb :start_game
  end

  post '/player1_choice' do
    puts 'im in the /player1_choice route'
    puts session.inspect
    session[:game].players[0].choice = params[:option]
    erb :results
  end

  # get '/player2_choice' do

  # 	erb :winner
  # end
 


 # why my score sets to 2
 #stop game when rounds == 0
 #after stopping the game should declare winner + winner score at the moment of the winning


  





































  # start the server if ruby file executed directly
  run! if app_file == $0
end
