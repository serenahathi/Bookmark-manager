require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
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
