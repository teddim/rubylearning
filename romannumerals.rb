#first pass at roman numerals
#rules
# I is 1
# V is 5
# X is 10
# L is 50
# C is 100
# D is 500
# M is 1000



def roman digit

	rules = [ 'I', 'V', 'X', 'L', 'C', 'D', 'M']
	num = digit[0]
	place = digit[1]


romannumeral = []
if num == 5
	romannumeral.push rules[place+1].to_s


else if num > 5
	romannumeral.push rules[place+1].to_s
	num = num - 5
	num.times do
	romannumeral.push rules[place].to_s
	end

else if num < 5
	num.times do
		puts 'num<5'
	romannumeral.push rules[place].to_s
	end

	end
	end
	end

return romannumeral
end


puts 'enter a number'
numeral = gets.chomp.to_i

digit = [numeral,0]
answer = roman digit
puts answer.to_s
