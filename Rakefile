require 'pg'

task :setup do
  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    
    begin
      connection.exec("CREATE DATABASE #{database};")
    rescue
    end

    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE IF NOT EXISTS links(id SERIAL PRIMARY KEY, url VARCHAR(60));")
  end
end

task :test_database_setup do
  # p "This is a string" - Invoke in spec_helper task

  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("TRUNCATE links RESTART IDENTITY;")

  connection.exec("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
  connection.exec("INSERT INTO links (url) VALUES('http://www.google.com');")
  connection.exec("INSERT INTO links (url) VALUES('http://www.facebook.com');")
end
