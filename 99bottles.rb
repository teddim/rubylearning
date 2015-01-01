puts  'are you going to do what I asked you to do?'
answer = gets.chomp
answer = answer.downcase
while answer != 'yes'
	songline = 'please do it, ok?'
puts songline
answer = gets.chomp
	
	if answer == 'yes' || answer == 'ok'
	songline = 'Thank you! Have a cookie :).'
puts songline
		break
	end
end