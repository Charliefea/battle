require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  player1 = Player.new(params[:player1])
  player2 = Player.new(params[:player2])
  $game = Game.new(player1,player2)
  redirect to('/play')
end

get '/play' do
  @game = $game
  erb :play
end

get '/fight' do
  @game = $game
  @game.attack(@game.opponent)
  @game.switch_turn

  erb :fight
end

  run! if app_file ==$0
end
