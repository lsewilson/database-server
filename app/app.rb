require 'sinatra/base'
require_relative '../lib/data_store.rb'

class DatabaseServer < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/new' do
    $store = DataStore.new
    redirect '/'
  end

  get '/get' do
    @value = $store.get_data(params.keys[0])
    erb :get
  end

  get '/set' do
    $store.save_data(params.keys[0], params.values[0])
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
