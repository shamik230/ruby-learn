add_10 = lambda {|x| x + 10}
add_20 = lambda {|x| x + 20}
sub_5 = lambda {|x| x - 5}
hh = {
    111 => add_20,
    222 => add_20,
    333 => add_20,
    444 => add_10,
    555 => add_10,
    666 => add_10,
    777 => sub_5,
    888 => sub_5,
    999 => sub_5
}
balance = 0
loop do
    rnd = rand(100..999)
    puts "Number: #{rnd}"
    if hh[rnd]
        balance = hh[rnd].call(balance)
        puts 'Lambda called'
    end
    puts "Balance #{balance}"
    puts 'Press Enter'
    gets
end