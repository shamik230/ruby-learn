# Ввод/вывод имени, вывод количества букв в имени
print 'Введите ваше имя: '
name = gets.strip.capitalize
puts '=' * 30
puts "Вас зовут:\t#{name}"
puts "Букв в имени:\t#{name.length}"
puts '=' * 30