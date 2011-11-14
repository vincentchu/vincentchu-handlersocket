puts "***** Running ./autogen"
puts `./autogen.sh`

puts "***** Running ./configure --disable-handlersocket-server"
puts `./configure --disable-handlersocket-server`

puts "***** making libhsclient"
puts `make`

