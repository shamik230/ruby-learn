def input
  gets.strip.downcase
end

hash = {}
loop do
  arr = []
  print "Key: "
  key = input
  break if key == ""
  loop do
    print "Value: "
    value = input
    break if value == ""
    arr << value
  end
  hash[key] = arr
end

pp hash
