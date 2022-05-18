def format_num(number)
    whole, decimal = number.to_s.split('.')
    if whole.to_i < -999 || whole.to_i > 999
      whole.reverse!.gsub!(/(\d{3})(?=\d)/, '\\1,').reverse!
    end
    [whole, decimal].compact.join('.')
end

salary = 0
savings_percent = 0

puts 'Введите размер вашей зарплаты'
salary = gets.to_i
puts 'Какой процент от зарплаты вы откладываете'
savings_percent = gets.to_f / 100

year_salary = salary * 12
year_savings = year_salary * savings_percent
year_salary_real = year_salary - year_savings

puts '=' * 40
(1..10).to_a.each do |i|
    puts "Срок #{i} год/лет"
    puts "ЗП\t\t\t#{format_num(year_salary.to_i * i)}"
    puts "Накопления\t\t#{format_num(year_savings.to_i * i)}"
    puts "ЗП без накоплений\t#{format_num(year_salary_real.to_i * i)}"
    puts '=' * 40
end