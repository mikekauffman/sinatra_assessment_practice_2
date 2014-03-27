require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :homepage
  end

  get '/task/new' do
    erb :new_task
  end

end