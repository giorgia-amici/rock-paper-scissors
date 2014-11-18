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
    session[:game].players[0].choice = params[:option]
    @choice = params[:option]
    GAME.choose
    GAME.play(LOGIC, GAME, session[:game].players[0])
    GAME.update_round(LOGIC, GAME, session[:game].players[0])
    erb :start_game
  end






































  # start the server if ruby file executed directly
  run! if app_file == $0
end
