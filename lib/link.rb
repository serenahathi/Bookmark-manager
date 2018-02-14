require 'pg'
require_relative 'database_connection'
require 'uri'

class Link

  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.create(hash)
    # uri = URI.parse(hash[:url]) && !uri.host.nil?
    fail "Invalid URL" if hash[:url] !~ /^http:\/\/www\..+\..+/
    # Another way of doing this is to use 'ping url' (without HTTP://)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{hash[:url]}')")
  end

end
