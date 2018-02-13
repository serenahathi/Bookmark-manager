require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
  get "/" do
    erb(:index)
  end

  post "/url" do
    url = params[:url]
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO links (url) VALUES('#{url}')")
    redirect("/links")
  endS

  get "/links" do
    @links = Link.all
    erb(:links)
  end

  run! if app_file == $0
end
