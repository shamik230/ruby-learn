def pretty_output arr
  arr = arr.map(&:capitalize)
  size = arr.size - 1
  size.times do |i|
    print "#{arr[i]}, "
  end
  print "#{arr.last}\n"
end

fav_colors = []
loop do
  puts "Введите ваш любимый цвет (или stop для выхода)"
  input = gets.strip.downcase
  if input == "stop"
    fav_colors.uniq!
    fav_colors.reverse!
    pretty_output fav_colors
    puts fav_colors.to_s
    exit
  else
    fav_colors << input
  end
end
