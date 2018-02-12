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
