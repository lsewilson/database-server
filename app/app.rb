require 'sinatra/base'
require_relative '../lib/data_store.rb'

class DatabaseServer < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new' do
    store = DataStore.new
    session[:store] = store
    redirect '/'
  end

  get '/get' do
    store = session[:store]
    @value = store.get_data(params.keys[0])
    erb :get
  end

  get '/set' do
    store = session[:store]
    store.save_data(params.keys[0], params.values[0])
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
