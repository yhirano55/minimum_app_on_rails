# Nano Rails application

Nano api server on Rails.

## Setup

    $ bundle

## Running

    $ bundle exec rackup

Using a browser, go to `http://localhost:9292` and you'll see: "Yay! You’re on Rails!"

## RESTful API Test

#### Index

    $ curl http://localhost:9292/users

#### Show

    $ curl http://localhost:9292/users/1

#### Create

    $ curl -X POST -d "user[name]=alice&user[gender]=female" http://localhost:9292/users

#### Update

    $ curl -X PUT -d "user[name]=carol" http://localhost:9292/users/1

#### Destroy

    $ curl -X DELETE http://localhost:9292/users/1
