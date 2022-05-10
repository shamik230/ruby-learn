@user_db = {'admin' => 'admin'}
@post_db = {'admin' => ['test1', 'test2']}
@logged = nil

def user_create
  log = nil
  pas = nil
  loop do
    print "Login: "
    login = gets.strip.downcase
    if @user_db[login]
      puts "User already exist!"
      next
    elsif login.size < 4
      puts "Login must have 4 or more symbols"
      next
    else
      log = login
      break
    end
  end
  loop do
    print "Password: "
    password1 = gets.strip
    if password1.size < 4
      puts "Password should have 4 or more symbols"
      next
    end
    print "Enter again: "
    password2 = gets.strip
    if password1 != password2
      puts "Passwords does not match"
      next
    else
      pas = password1
      break
    end
  end
  @user_db[log] = pas
  @logged = log
  @post_db[log] = []
  puts "(Sign up success!)"
end

def user_login
  log = nil
  loop do
    print "Login: "
    login = gets.strip.downcase
    puts "=" * 10
    print "Password: "
    password = gets.strip
    if !@user_db[login]
      puts "Incorrect username"
      next
    elsif @user_db[login] != password
      puts "Incorrect password"
      next
    else
      log = login
      break
    end
  end
  @logged = log
  puts "(Login success!)"
end

def user_logout
  puts "(#{@logged}) log off!"
  @logged = nil
end

def user_show
  puts "_" * 20
  @user_db.keys.each do |user|
    puts user
  end
  puts "_" * 20
end

def post_add
  message = nil
  loop do
    puts "Enter a message"
    mes = gets.strip
    if mes.size < 4
      puts "Message should have at least 4 symbols"
      next
    else
      message = mes
      break
    end
  end
  @post_db[@logged] << message
  puts "(Post success!)"
end

def post_delete
  if @post_db[@logged].empty?
    puts "You have no posts"
    return
  end
  size = @post_db[@logged].size
  puts "Your posts"
  puts "_" * 20
  @post_db[@logged].each_with_index do |post, id|
    puts "#{id+1}. #{post}"
  end
  puts "_" * 20
  loop do
    print "Which one you want to delete? (1-#{size}) "
    input = gets.to_i - 1
    if (0..size-1).include?(input)
      @post_db[@logged].delete_at(input)
      puts "(Delete success)"
      break
    else
      puts "Incorrect input"
      next
    end
  end
end

def post_view
  puts "_" * 20
  @post_db.each do |key, value|
    next if value.empty?
    puts "#{key}:"
    value.each do |message|
      puts "\t|#{message}|"
    end
  end
  puts "_" * 20
end

def logged?
    !@logged.nil?
end

def menu
  puts "=" * 40
  puts "Welcome (#{@logged})" if logged?
  puts "(L)ogin"              unless logged?
  puts "(O)ff"                if logged?
  puts "(R)egister"           unless logged?
  puts "(S)how users"
  puts "(V)iew posts"
  puts "(A)dd post"           if logged?
  puts "(D)elete post"        if logged?
  puts "(E)xit"
  puts "=" * 40
  input = gets.strip.downcase
  case input
    when 'l'
      user_login
    when 'o'
      user_logout
    when 'r'
      user_create
    when 'v'
      post_view
    when 'a'
      post_add
    when 'd'
      post_delete
    when 's'
      user_show
    when 'e'
      exit
    when 'admin'
      p @user_db
      p @post_db
    else
      puts "(Incorrect input)"
  end
end

loop do
  menu
end