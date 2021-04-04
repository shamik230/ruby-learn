require 'sinatra'

get '/' do
    erb :index
end

post '/' do
    @login = params[:login]
    @password = params[:password]
    erb :index
end
