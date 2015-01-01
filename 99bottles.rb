# I overwrote my original 99 bottles (but it did work).
# This program was to get my 6 year old daughter to get her pajamas on.
# It worked, hahahaha.
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
