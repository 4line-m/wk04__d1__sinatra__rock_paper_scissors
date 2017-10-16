require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end
