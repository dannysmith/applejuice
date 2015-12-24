require 'sinatra/base'

class AppleJuice < Sinatra::Base

  configure :development do
    require 'better_errors'
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
  end

  get '/' do
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

  get "/dosomething/:id" do



    if params[:id].match /\d/

      redirect login #This is just dummy stuff
    end
  end

  get '/dashboard' do
    erb :dashboard
  end
end
