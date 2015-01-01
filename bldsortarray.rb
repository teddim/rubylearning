puts 'Give me as many words as you\'d like. Press enter on an empty line when you are done:'
nextword = gets.chomp

favorites = []

while true
	
	if nextword == ''
	
		puts ' no more words'
	break
	end

favorites.push nextword

puts favorites.sort.to_s
nextword = gets.chomp
end