require 'bundler/setup'

Dir[File.dirname(__FILE__) + '/lib/*'].each { |f| require f }

require './applejuice'

if ENV['RACK_ENV'] == 'development'
  require 'pry'
  require 'rack-livereload'
  use Rack::LiveReload
elsif ENV['RACK_ENV'] == 'production'
  use Rack::Deflater # Enable GZip Compression
end

run AppleJuice
