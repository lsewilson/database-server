# Database Server

This is my solution to the following tech test:

> "Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

> During your [mock] interview, you will pair on saving the data to a file."

> Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.

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

### Approach to problem

I started by thinking about the typical MVC structure, but instead of using a classic database model, I chose to create a data storage class with an empty hash property.

I chose to use Ruby and Sinatra for this problem as all I needed was a simple server, which could deal with two requests to get and set data.

Once I had connected the server and my DataStore class, I created a way of initializing a new database from the browser and setting it to a global variable. This was then refactored to store the DataStore instance as a session, which is created on the first /set? request.
