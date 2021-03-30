# Phonebook with class
class Book
    def initialize
        @hash = {}
    end

    def input
        puts '=' * 30
        print 'Введите имя: '
        name = gets.strip.capitalize
        if name.empty?
            show()
            exit
        elsif @hash[name]
            puts 'Такое имя уже есть!'
            puts '=' * 30
            return
        end
        print 'Введите номер: '
        tel = gets.strip
        @hash[name] = tel
        puts '=' * 30
    end

    def show
        @hash.each { |k, v| puts "Name: \t#{k} \nTel: \t#{v}"; puts '-' * 30 } 
    end
end

book1 = Book.new
loop do
    book1.input
    book1.show
end