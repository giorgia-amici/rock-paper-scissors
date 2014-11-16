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

  post '/sign_in' do
  	@player1 = Player.new(params[:player1])
  	@name = @player1.name
  	session[:player1] = @player1
  	puts params.inspect
  	puts session.inspect
  	GAME.add_player(@player1)
  	puts GAME.players
  	erb :start_game
  end

  post '/player1_choice' do
  	@player1 = Player.new(params[:player1])
    session[:player1] = @player1.choose(params[:option])
    puts params.inspect 
    puts GAME
    puts GAME.players
    puts LOGIC.rules
   	erb :waiting_player2
  end

  # get '/player2_choice' do

  # 	erb :winner
  # end
 

  





































  # start the server if ruby file executed directly
  run! if app_file == $0
end
