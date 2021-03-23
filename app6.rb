# Однорукий бандит (рулетка)
hh = { 111 => 10, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => 60, 777 => 70, 888 => 80, 999 => 90 }

balance = 100

loop do
    print 'Press enter '
    gets
    value = rand(100..999)
    print "[#{value}]"
    if hh[value]
        balance += hh[value]
        print " (+#{hh[value]})"
    elsif value % 5 == 0
        balance += 5
        print ' (+5)'
    else
        balance -= 2
        print ' (-2)'
    end
    puts
    puts "Balance: #{balance}"
    if balance <= 0
        puts "You lose!"
        exit
    end
    puts
end