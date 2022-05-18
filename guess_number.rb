loop do
  x = rand(1..100)
  puts "Число загадано"
  loop do
    print "Напиши число: "
    input = gets.to_i
    if x == input
      puts "Угадал"
      break
    elsif input == 727
      puts "Число #{x}"
    elsif x < input
      puts "Число меньше"
    elsif x > input
     puts "Число больше"
    end
  end
end

