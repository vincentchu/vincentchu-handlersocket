# vincentchu-handlersocket

This is a gem-installable version of Genki Sugawara's [ruby-handlersocket](https://bitbucket.org/winebarrel/ruby-handlersocket/src).

HandlerSocket is a plugin for MySQL that allows very fast index reads and writes by bypassing the SQL parsing layer and talking directly into the DB storage engine. It's reputed to approach memcache speeds.

For more information about HandlerSocket, please see the [main repository](https://github.com/ahiguti/HandlerSocket-Plugin-for-MySQL) or Yoshinori Matsunobu's [enlightening blog article](http://yoshinorimatsunobu.blogspot.com/2010/10/using-mysql-as-nosql-story-for.html).

## Why? Isn't there already ruby-handlersocket and a few other wrappers?

Truthfully, I coudln't really get the [other](https://github.com/igrigorik/em-handlersocket) [clients](https://github.com/miyucy/handlersocket) to run, except for ruby-handlersocket. Unfortunately, I had to separately install the libhsclient libraries, dig my way through a few Makefiles, etc..

Putting everything into a gem was my way of making sure I could build ruby-handlersocket in a repeatable way. Releasing it will hopefully be useful to some folks.

## Dependencies

 - [ruby-handlersocket](https://bitbucket.org/winebarrel/ruby-handlersocket/src)
 - [libhsclient](https://github.com/ahiguti/HandlerSocket-Plugin-for-MySQL)

## Author

vincentchu-handlersocket was written by Vincent Chu (vincentchu [at] gmail.com) and is used at [Posterous](http://posterous.com)
