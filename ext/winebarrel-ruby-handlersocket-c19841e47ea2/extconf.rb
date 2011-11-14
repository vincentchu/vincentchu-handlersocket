require 'mkmf'

def execute_cmd( cmd )
  puts "Executing #{cmd}"
  puts system(cmd)
end

base_dir       = File.expand_path( File.dirname(__FILE__) )
libhs_dir      = File.expand_path( File.join(base_dir, "../HandlerSocket-Plugin-for-MySQL/") )
libhs_inst_dir = File.join(libhs_dir, "install")
libhs_client   = File.join(libhs_dir, "libhsclient")
libhs_libs     = File.join(libhs_inst_dir, "lib")
libhs_include  = File.join(libhs_inst_dir, "include")

puts "***** Building libhsclient"
execute_cmd %Q[cd #{libhs_dir} && ./autogen.sh]
execute_cmd %Q[cd #{libhs_dir} && ./configure --disable-handlersocket-server --prefix=#{libhs_inst_dir}]
execute_cmd %Q[cd #{libhs_dir} && make]
execute_cmd %Q[cd #{libhs_dir} && make install]
execute_cmd %Q[cp -r #{libhs_client} #{base_dir}]

puts "***** Building ruby-handlersocket"
dir_config("hsclient", libhs_include, libhs_libs)
if have_library('stdc++') and have_library('hsclient')
  create_makefile('handlersocket')
end

