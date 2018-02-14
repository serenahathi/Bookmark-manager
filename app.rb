require 'sinatra/base'
require './lib/link'
require './lib/database_connection_setup'
require 'sinatra/flash'

# require_relative 'weirdthing.rb'
# include EnvSetup

class BookmarkManager < Sinatra::Base
  enable :sessions

  get "/" do
    @links = Link.all
    erb(:index)
  end

  post "/url" do
    Link.create(url: params[:url]) # we pass a hash cause db has a hash structure
    redirect("/")
  end

  run! if app_file == $0
end
