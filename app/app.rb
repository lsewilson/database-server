require 'sinatra/base'
require_relative '../lib/data_store.rb'

class DatabaseServer < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/get' do
    
  end

  post '/new' do
    @store = DataStore.new
    redirect '/get'
  end

  post '/set' do
    @store.save_data(params[:key], params[:value])
    redirect '/'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
