arr = []
puts "Enter to show array"
loop do
  print "Name: "
  name = gets.strip.capitalize
  break if name == ""
  print "Age: "
  age = gets.strip
  break if age == ""
  arr << [name, age.to_i]
end

arr.each do |data|
  puts "#{data[0]} #{data[1]}"
end
