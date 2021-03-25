# Ввод/вывод хэша, который хранит данные в формате (имя, возраст)
hh = {}

def add_to_hash(options, hh)
    name = options[:name]
    age = options[:age]
    if hh[name]
        puts "Такое имя уже есть!" 
    else
        hh[name] = age
    end
end

def show_hash(hh)
    hh.each {|k, v| puts "#{k} - #{v}"}
end

def input(hh)
    puts 'Введите имя: '
    name = gets.strip.capitalize
    if name.empty?
        show_hash(hh)
        exit
    end
    puts 'Введите возраст: '
    age = gets.to_i
    add_to_hash({name: name, age: age}, hh)
end

loop do
    input(hh)
    show_hash(hh)
end