require 'sinatra/base'
require_relative '../lib/data_store.rb'

class DatabaseServer < Sinatra::Base

  set :port, 4000
  enable :sessions

  get '/get' do
    @key = params[:key]
    @value = session[:store].get_data(@key)
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
