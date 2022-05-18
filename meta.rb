puts "Input"
input = gets.strip


send :define_method, input do
  puts "Hello, #{input}"
end


send "abc abc"
