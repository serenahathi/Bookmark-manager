require 'pg'
require 'database_connection'

class Link

  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.create(hash)
    # if ENV['ENVIRONMENT'] == "test"
    #   connection = PG.connect(dbname: 'bookmark_manager_test')
    # else
    #   connection = PG.connect(dbname: 'bookmark_manager')
    # end
    # connection.exec("INSERT INTO links (url) VALUES('#{hash[:url]}')")
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{hash[:url]}')")
  end

end
