def generator
    rand(111..999)
end

def animation num
    9.times do
        print "[#{generator}]"
        sleep 0.05
        print "\r"
    end
    print "[#{num}] "
end

def check num, money
    balance = money
    if num == 777
        print "Джекпот! 1,000,000$\n"
        balance += 1_000_000
    elsif num % 111 == 0
        print "Большой куш! 100,000$\n"
        balance += 100_000
    elsif num.to_s[0] == num.to_s[2]
        print "Вам везёт! 10,000$\n"
        balance += 10_000
    elsif num % 5 == 0
        print "+50$\n"
        balance += 50
    else
        print "В следующий раз точно повезёт! -5$\n"
        balance -= 5
    end
    return balance
end

def format_num number
    whole, decimal = number.to_s.split('.')
    if whole.to_i < -999 || whole.to_i > 999
      whole.reverse!.gsub!(/(\d{3})(?=\d)/, '\\1,').reverse!
    end
    [whole, decimal].compact.join('.')
end

money = 100
num = 0
loop do
    print "Нажмите Enter..."
    gets
    num = generator
    animation num
    money = check num, money
    puts "Ваш баланс: #{format_num money}$"
    puts "=" * 20
end