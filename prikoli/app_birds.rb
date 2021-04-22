temp = ARGV[0]
season = ARGV[1]

if temp.nil?
  puts "Какая сейчас температура?"
  temp = STDIN.gets
end

if season.nil?
  puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  season = STDIN.gets
end

temp.match?(/\d/) ? (temp = temp.to_i) : (abort "Неверный ввод!")
season.match?(/\d/) ? (season = season.to_i) : (abort "Неверный ввод!")

if [0,2,3].include? season
  if (22..30).include? temp
    puts "Скорее идите в парк, соловьи поют!"
  else
    puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
  end
elsif season == 1
    if (15..35).include? temp
    puts "Скорее идите в парк, соловьи поют!"
  else
    puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
  end
else
    puts "Неверный ввод!"
end