puts "Сколько лет будем копить?"
years = gets.to_i
puts "Какую сумму будем откладывать в месяц?"
month_deposit = gets.to_f

total_deposit = month_deposit

1.upto(years) do |year|
  1.upto(12) do |month|
    puts "Год #{year} Месяц #{month} Отложено: #{total_deposit}"
    puts '=' * 40
    total_deposit += month_deposit
  end
end
