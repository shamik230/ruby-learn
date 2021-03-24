# Tic-tac-toe
table = [
    ['*', '*', '*'],
    ['*', '*', '*'],
    ['*', '*', '*']
]

def show_table(table)
    table.each { |y| y.each {|x| print "#{x} "}; puts }
end

def free?(x, y, table)
    if table_full?(table)
        puts "Игра закончена! (Ничья)"
        exit
    elsif table[y][x] != '*'
        return false
    else
        return true
    end
end

def table_full?(table)
    table.each do |y|
        y.each do |x|
            if x == '*'
                return false
            end
        end
    end
    return true
end

def player_turn(table)
    loop do
        puts '=' * 15
        puts "Ваш ход по X: "
        player_x = gets.to_i
        puts "Ваш ход по Y: "
        player_y = gets.to_i
        puts '=' * 15
        if !([1,2,3].include?(player_x) && [1,2,3].include?(player_y))
            puts 'Неверный ввод!'
            next
        elsif free?(player_x - 1, player_y - 1, table)
            table[player_y - 1][player_x - 1] = 'X'
            break 
        else
            puts "Ячейка уже занята!"
        end
    end
end

def computer_turn(table)
    loop do
        computer_x = rand(0..2)
        computer_y = rand(0..2)
        if free?(computer_x, computer_y, table)
            table[computer_y][computer_x] = 'O'
            break
        end
    end
end

loop do
    show_table(table)
    player_turn(table)
    computer_turn(table)
end