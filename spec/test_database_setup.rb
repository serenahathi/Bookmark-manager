require 'pg'

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE links RESTART IDENTITY;")

connection.exec("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.google.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.facebook.com');")
