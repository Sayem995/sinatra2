require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

 get '/' do
   erb :index
 end

 post '/names' do
    session[:player_1] = params[:player_1_name]
    session[:player_2] = params[:player_2_name]
   redirect '/play'
 end

 get '/play' do
   @player_1_name = session[:player_1]
   @player_2_name = session[:player_2]
   erb :play
 end

 run! if app_file == $0
end
