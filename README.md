# Database Server

This is my solution which satisfies the brief of the following tech test:

*"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.*

## Installation

### Set up
```
$ git clone git@github.com:lsewilson/database-server.git
$ cd database-server
$ bundle
```

### Run tests
```
$ rspec
```

### Run server
```
$ ruby app/app.rb
```

Storing data to memory:

* Visit http://localhost:4000/set?somekey=somevalue

Getting data from memory:

* Visit http://localhost:4000/get?key=somekey
