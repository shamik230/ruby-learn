# Ввод/вывод двумерного массива, который хранит данные в формате (имя, возраст)
arr = []
loop do
    print 'Enter name to add: '
    name = gets.strip
    break if name.empty?
    print 'Enter age to add: '
    age = gets.to_i
    break if age == 0
    arr << [name, age]
end
x = 0
arr.each do |name, age|
    x += 1
    puts "#{x}. #{name} - #{age}"
end