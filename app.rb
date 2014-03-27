require 'sinatra/base'

class App < Sinatra::Base

  TASKS = []

  get '/' do
    erb :homepage, locals: {tasks: TASKS}
  end

  get '/task/new' do
    erb :new_task
  end

  post '/' do
    TASKS << params[:new_task]
    redirect '/'
  end

end