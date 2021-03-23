# Камень, ножницы, бумага
arr = [:rock, :scissors, :paper]

puts '(R)ock, (S)cissors, (P)aper? '
s = gets.strip.capitalize

user_choice = nil
user_choice = :rock if s == 'R'
user_choice = :scissors if s == 'S'
user_choice = :paper if s == 'P'
exit if user_choice.nil?

computer_choice = arr[rand(0..2)]

puts "You picked a #{user_choice}, computer picked a #{computer_choice}"

combs =
[
    [:rock, :rock, 'Draw'],
    [:scissors, :scissors, 'Draw'],
    [:paper, :paper, 'Draw'],

    [:rock, :scissors, 'Player wins!'],
    [:rock, :paper, 'Computer wins!'],

    [:scissors, :paper, 'Player wins!'],
    [:scissors, :rock, 'Computer wins!'],

    [:paper, :rock, 'Player wins!'],
    [:paper, :scissors, 'Computer wins!']

]

combs.each do |user, computer, result|
    if user_choice == user && computer_choice == computer
        puts "Result: #{result}"
    end
end