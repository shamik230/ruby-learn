require 'sinatra'

get '/' do
    erb :index
end

get '/contacts' do
    @title = 'Contacts'
    @message = 'Phone 123'
    erb :message
end

get '/faq' do
    @title = 'FAQ' 
    @message = 'Phone 123'
    erb :message
end

get '/something' do
    @title = 'Something'
    @message = 'bla'
    erb :message
end
post '/' do
    @login = params[:login]
    @password = params[:password]
    if @login == "admin" && @password == "secret"
        erb :welcome
    else
        @message = "Access denied"
        erb :index
    end
end
