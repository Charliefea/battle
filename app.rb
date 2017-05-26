require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player1 = Player.new(params[:player1])
  $player2 = Player.new(params[:player2])
  redirect to('/play')
end

get '/play' do
  erb :play
end

get '/fight' do
  Game.new.attack($player2)
  erb :fight
end

  run! if app_file ==$0
end
