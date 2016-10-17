require 'sinatra/base'
require_relative '../lib/data_store.rb'

class DatabaseServer < Sinatra::Base
  enable :sessions

  get '/get' do
    @key = params.keys[0]
    @value = session[:store].get_data(params.keys[0])
    erb :get
  end

  get '/set' do
    unless session[:store]
      session[:store] = DataStore.new
    end
    session[:store].save_data(params.keys[0], params.values[0])
    redirect '/get'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
