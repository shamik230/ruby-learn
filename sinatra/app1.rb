require 'sinatra'

get '/' do
    erb :index
end

get '/admin' do
    erb :admin
end

get '/welcome' do
    @data = File.open("./users.txt", "r")
    erb :welcome
end

post '/' do
    @username = params[:username]
    @tel = params[:tel]
    @time = params[:time]
    @file = File.open("./users.txt", "a")
    if @username.length > 0
        @file.write("Name:#{@username} Tel:#{@tel} Time:#{@time}\n")
        @index_message = "Ваши данные сохранены"
    end
    @file.close
    erb :index
end

post '/admin' do
    @login = params[:admin_login]
    @password = params[:admin_password]
    if @login == "admin" && @password == "secret"
        redirect "/welcome"
    else
        @admin_message = "Access denied"
        erb :admin
    end
end
