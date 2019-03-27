require 'sinatra/base'

class DailyDiary < Sinatra::Base
  enable :sessions

  get '/diary' do
    erb :index
  end

  post '/add' do
    erb :add
  end
end
