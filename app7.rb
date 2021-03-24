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
    if table[y][x] != '*'
        return false
    else
        return true
    end
end
def player_turn(table)
    puts "Ваш ход по X: "
    player_x = gets.to_i
    puts "Ваш ход по Y: "
    player_y = gets.to_i
    if free?(player_x, player_y, table)
        table[player_y][player_x] = 'X' 
    else
        puts "Ячейка уже занята!"
    end
end
def computer_turn(table)
    
end
loop do
    show_table(table)
    player_turn(table)
    computer_turn(table)
end