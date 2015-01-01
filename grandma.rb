
puts 'HI SWEETIE!'
count =0

while true
	yousaid = gets.chomp
	if yousaid == 'BYE'
		count = count + 1
		if count == 3
			puts 'BYE SWEETIE!'
			break
		end
	end

	if yousaid != yousaid.upcase
		puts	'HUH?! SPEAK UP SONNY!'
		count = 0
	
	else
		year = rand(21) + 1930
		puts 'NO, NOT SINCE ' + year.to_s + '!'


	end
end
