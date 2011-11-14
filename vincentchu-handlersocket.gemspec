Gem::Specification.new do |s|
  s.name        = 'vincentchu-handlersocket'
  s.version     = '0.0.1'
  s.summary     = "A ruby client for handlersocket that is gem-installable."
  s.description = "This is a description"
  s.authors     = ["Vincent Chu"]
  s.email       = "vincentchu [at] gmail.com"
  s.files       = Dir.glob("lib/**/*.rb") + Dir.glob("ext/**/*")
  s.homepage    = "http://github.com/vincentchu/vincentchu-handlersocket"
  s.extensions  = ["ext/winebarrel-ruby-handlersocket-c19841e47ea2/extconf.rb"]
end

