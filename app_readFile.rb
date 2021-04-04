input = File.open("text.txt", "r")
hh = {}
while(line = input.gets)
    arr = line.split(',')
    hh[arr[0]] = arr[1].to_f
end

sum = 0
hh.each do |_, v|
    sum += v
end

puts hh.inspect
puts "Total: #{sum}"

output = File.open("text.txt", "a")
output.write("\nTotal: #{sum}")
output.close