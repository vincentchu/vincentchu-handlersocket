# vincentchu-handlersocket

This is a gem-installable version of Genki Sugawara's [ruby-handlersocket](https://bitbucket.org/winebarrel/ruby-handlersocket/src).

HandlerSocket is a plugin for MySQL that allows very fast index reads and writes by bypassing the SQL parsing layer and talking directly into the DB storage engine. It's reputed to approach memcache speeds.

For more information about HandlerSocket, please see the [main repository](https://github.com/ahiguti/HandlerSocket-Plugin-for-MySQL) or Yoshinori Matsunobu's [enlightening blog article](http://yoshinorimatsunobu.blogspot.com/2010/10/using-mysql-as-nosql-story-for.html).

## Why? Isn't there already ruby-handlersocket and a few other wrappers?

Truthfully, I coudln't really get the [other](https://github.com/igrigorik/em-handlersocket) [clients](https://github.com/miyucy/handlersocket) to run or compile, except for ruby-handlersocket. Unfortunately, it is not installable via gem and I had to separately install the libhsclient libraries, dig my way through a few Makefiles, etc..

Putting everything into a gem was my way of making sure I could build ruby-handlersocket in a repeatable way and use it portably in a few of my projects. Releasing it will hopefully be useful to some folks.

## Use

    gem install vincentchu-handlersocket

Then, in ruby:

    require 'handlersocket'
    hs = HandlerSocket.new('127.0.0.1', 9999)
    hs.open_index(3, "hs_test", "bodies", "PRIMARY", "id,eid,body")

The API for the client is pretty barebones and hard to understand; the best place to start would be the [docs for the Perl client](https://github.com/ahiguti/HandlerSocket-Plugin-for-MySQL/blob/master/docs-en/perl-client.en.txt), which mirrors the interface for the ruby client.

## Dependencies

 - [ruby-handlersocket](https://bitbucket.org/winebarrel/ruby-handlersocket/src)
 - [libhsclient](https://github.com/ahiguti/HandlerSocket-Plugin-for-MySQL)

## Author

vincentchu-handlersocket was written by Vincent Chu (vincentchu [at] gmail.com) and is used at [Posterous](http://posterous.com).
