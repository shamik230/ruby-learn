years = 0
loop do
  if rand(1..100) == 1
    puts "#{years} year"
    break
  end
  years =  years.next
end
