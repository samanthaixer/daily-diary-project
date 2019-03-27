require 'sinatra/base'

class DailyDiary < Sinatra::Base
  enable :sessions

  get '/diary' do
    erb :index
  end

  post '/diary/add' do
    erb :add
  end

  post '/diary/display' do
    @entry = {title: params[:title], entry: params[:entry]}
    erb :display
  end
end
