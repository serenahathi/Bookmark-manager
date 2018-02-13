require 'pg'

class Link

  def self.all
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("SELECT * FROM links")
    result.map { |hash| hash['url'] }
  end

  def self.create(hash)
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("INSERT INTO links (url) VALUES('#{hash[:url]}')")
  end

end
