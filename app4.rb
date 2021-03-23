arr = []
loop do
    print 'Enter something: '
    string = gets.strip
    break if string.empty?
    arr << string
end
x = 0
arr.each do |string|
    x += 1
    puts "#{x}. #{string}"
end