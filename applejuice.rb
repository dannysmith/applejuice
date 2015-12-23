require 'better_errors'
require 'sinatra/base'

class AppleJuice < Sinatra::Base
  configure :development do
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
  end

  get '/' do
    puts ENV['RACK_ENV']
    redirect '/login'
  end

  get '/login/?' do
    erb :login
  end

  post '/login/?' do
    if params[:email] = "admin" && params[:password] == "p4ssw0rd"
      puts "Admin user Authenticated"
      redirect '/dashboard'
    else
      status 403
      "403 Forbidden"
    end
  end

  get '/dashboard' do
    erb :dashboard
  end
end
