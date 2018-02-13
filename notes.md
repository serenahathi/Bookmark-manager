## ex. 1 Creating User Stories
## ex. 2 setup project
```plain
$ rspec --init
$ bundle init (creates gemfile)
$ rvm list
$ rvm use 2.5.0
$ rvm --default use 2.5.0
```
Inside gemfile
```plain
source 'https://rubygems.org'

gem 'sinatra'
gem 'rspec'
gem 'capybara'
```
Useful rspec methods
```plain
$ rspec -fd  (shows tests with headings)
$ for i in `seq 50` ; do rspec spec ; [[ ! $? = 0 ]] && break ; done (runs 50 tests)
$ rspec --fail-fast
```
```plain
$ rspec -fd  (shows tests with headings)
$ for i in `seq 50` ; do rspec spec ; [[ ! $? = 0 ]] && break ; done (runs 50 tests)
$ rspec --fail-fast
```
```ruby
require 'sinatra/base' in app.rb
class BookmarkManager < Sinatra::Base

  run! if app_file == $0
end
```
In spec_helper:
```ruby
ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './features/web_helpers'

Capybara.app = BookmarkManager
```
In config.ru
```plain
require_relative "./app"
run BookmarkManager
```

## ex. 3 Creating postgres database
- to enter a database and open postgresql irb type
```plain
$ psql postgres
```
- create a database
```plain
$ psql postgres
$ CREATE DATABASE "your_user_name_here";
```
- list all of the databases
```plain
$ \l
```
- quit `psql`
```plain
$ \q
```
### postgres cheat sheet
https://blog.jasonmeridth.com/posts/postgresql-command-line-cheat-sheet/

## ex. 4
Connect to database in postgres (first enter postgres by `psql postgres`)
```plain
\c bookmark_manager
```
Creating table in postgres
```plain
CREATE TABLE weather (
    city            varchar(80),
    temp_lo         int,           -- low temperature
    temp_hi         int,           -- high temperature
    prcp            real,          -- precipitation
    date            date
);
```
Enter the table (show columns)
```plain
\d tablename
```
varchar - character varying - text limited in charactes (eg. to 60).

## ex 5 - Insert to / delete from table

Nice explanation of insertion :)
```plain
CREATE TABLE lists(id serial, col2 text, col3 text, ...);
      *If you don't specify "id", it will autogenerate for you:*
INSERT INTO lists(col2, col3, ...) VALUES('KO','SPH', ...);
      *You can also specify using DEFAULT (the same as above):*
INSERT INTO lists(id, col2, col3, ...) VALUES(DEFAULT, 'KO','SPH', ...);
```
Add stuff to increment ID (since it's `SERIAL` type)
```plain
INSERT INTO links (url) VALUES ('http://www.makersacademy.com');
```
Select all stuff from table
```plain
SELECT * FROM table;
```
Delete stuff
```plain
DELETE FROM links WHERE id = 3;
DELETE FROM links WHERE url = 'http://www.twitter.com';
```
Update stuff
```plain
UPDATE links SET url = 'http://www.google.com' WHERE id = 2
UPDATE links SET url = 'http://www.google.com' WHERE url = 'http://www.askjeeves.com';
```

### ex 6 Interacting with PostgreSQL from Ruby
--> remove the hard-coded array of links and read them from a database instead.

```ruby
# Inside lib/link.rb
require 'pg'

class Link
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM links")
    result.map { |link| link['url'] }
  end
end
```
```plain
connection = PG.connect(dbname: 'bookmark_manager')
```
We ask the PG class (provided by the pg gem) to connect to the database called 'bookmark manager'. It returns a connection (which we store in a variable called connection). We can ask connection to do things, like query the database.
```plain
result = connection.exec("SELECT * FROM links")
```
We ask the connection to execute some SQL: SELECT * FROM links. This SQL will fetch all links, and the resulting 'result object' is stored in a variable called result.
```plain
result.map { |link| link['url'] }
```
The result object contains the links, each of which is a hash of the link ID and link URL. We map each hash to the url key of the hash. This gives us an array of the link URLs.
