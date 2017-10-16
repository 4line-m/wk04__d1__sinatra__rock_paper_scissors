require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end

get '/throw/:player_1/:player_2' do
  game = Game.new(params[:player_1], params[:player_2])
  @game = game.throw()
  erb(:result)
end
