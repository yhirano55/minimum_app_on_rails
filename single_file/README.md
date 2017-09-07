# Single File Application with Rails

Nano api server on Rails.

## Setup

    $ bundle

## Running

    $ ./server

Using a browser, go to `http://localhost:3000` and you'll see: "Yay! You’re on Rails!"

## RESTful API Test

#### Index

    $ curl http://localhost:3000/users

#### Show

    $ curl http://localhost:3000/users/1

#### Create

    $ curl -X POST -d "user[name]=alice&user[gender]=female" http://localhost:3000/users

#### Update

    $ curl -X PUT -d "user[name]=carol" http://localhost:3000/users/1

#### Destroy

    $ curl -X DELETE http://localhost:3000/users/1
