require 'sinatra/base'
require './lib/diary_entry'

class DailyDiary < Sinatra::Base
  enable :sessions

  get '/diary' do
    erb :index
  end

  post '/diary/add' do
    erb :add
  end

  post '/diary/display' do
    @diary_entry = DiaryEntry.new(params[:title], params[:entry])
    @diary_entry = @diary_entry.display
    erb :display
  end
end
