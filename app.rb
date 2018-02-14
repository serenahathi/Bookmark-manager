require 'sinatra/base'
require './lib/link'
require './lib/database_connection_setup'
require 'sinatra/flash'

# require_relative 'weirdthing.rb'
# include EnvSetup

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get "/" do
    @links = Link.all
    erb(:index)
  end

  post "/url" do
    begin 
      Link.create(params[:url])
    rescue => e
      flash[:error] = e.message
    end
    
    redirect("/")
  end

  run! if app_file == $0
end
