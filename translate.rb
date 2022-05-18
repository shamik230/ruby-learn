str = "How to translate"
words = ["ball", "door", "peace", "car", "color", "sun", "ruby"]
words_translated = ["мяч", "дверь", "мир", "машина", "цвет", "солнце", "рубин"]
correct_answer_count = 0
words.size.times do |i|
	puts "#{str} #{words[i]}?"
	input = gets.chomp.downcase
	if input == words_translated[i]
		puts "Correct!"
		correct_answer_count += 1
	else
		puts "Incorrect :("
	end
end
puts "Correct answers #{correct_answer_count}/#{words.size}"
