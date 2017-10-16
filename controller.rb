require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end

get '/rules' do
  erb(:rules)
end

get '/rock_paper_scissors/:player_1/:player_2' do
  game = Game.new(params[:player_1], params[:player_2])
  @game = game.throw()
  erb(:result)
end
