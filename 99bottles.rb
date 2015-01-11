def english_number number
	if number < 0
		return 'Please enter a number that is not negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = '' #this is the string we will return
	ones_place = ['one', 'two', 'three',
		'four', 'five', 'six',
		'seven', 'eight', 'nine']
		tens_place = ['ten', 'twenty', 'thirty',
			'forty', 'fifty', 'sixty',
			'seventy', 'eighty', 'ninety']
			teenagers = ['eleven', 'twelve', 'thirteen',
				'fourteen', 'fifteen', 'sixteen',
				'seventeen', 'eighteen', 'nineteen']
				# left is how much of the number we still have to write
				# write is the part we are writing out right now

				left = number

				write = left/1000000000000000     #how many quadrillion left?
				left = left - write*1000000000000000

				if write > 0
					quadrillions = english_number write
					num_string = num_string + quadrillions + ' quadrillion'
					if left > 0
						# for correct formatting
						num_string = num_string + ' '
					end
				end

				write = left/1000000000000     #how many trillions left?
				left = left - write*1000000000000

				if write > 0
					trillions = english_number write
					num_string = num_string + trillions + ' trillion'
					if left > 0
						# for correct formatting
						num_string = num_string + ' '
					end
				end

				write = left/1000000000      #how many billions left?
				left = left - write*1000000000

				if write > 0
					billions = english_number write
					num_string = num_string + billions + ' billion'
					if left > 0
						# for correct formatting
						num_string = num_string + ' '
					end
				end

				write = left/1000000      #how many millions left?
				left = left - write*1000000

				if write > 0
					millions = english_number write
					num_string = num_string + millions + ' million'
					if left > 0
						# for correct formatting
						num_string = num_string + ' '
					end
				end


				write = left/1000      #how many thousands left?
				left = left - write*1000

				if write > 0
					thousands = english_number write
					num_string = num_string + thousands + ' thousand'
					if left > 0
						# So we don't write 'two thousandthree hundred'...
						num_string = num_string + ' '
					end
				end

				write = left/100      #how many hundreds left?
				left = left - write*100

				if write > 0
					hundreds = english_number write
					num_string = num_string + hundreds + ' hundred'
					if left > 0
						# So we don't write 'two hundrefifty-one'...
						num_string = num_string + ' '
					end
				end

				write = left/10     #how many tens left?
				left = left - write*10 #subtract off those tens

				if write > 0
					if ((write == 1) and (left > 0))

						#exception for the teens
						num_string = num_string + teenagers[left-1]
						left = 0
					else
						num_string = num_string + tens_place[write-1]
					end
					if left > 0
						#so we don't write sixtyfour
						num_string = num_string + '-'
					end
				end

				write = left #how many ones are left to write?
				left = 0 # subtract off those ones

				if write > 0
					num_string = num_string + ones_place[write-1]
				end

				# now we just return "num_string"
				num_string
			end
			
# 99 bottles of beer on the wall

puts 'give me a number please:'
num = gets.chomp.to_i

while num != 0
	puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer'
	puts 'take one down, pass it around ' + (num -1).to_s + ' bottles of beer on the wall.'
	puts ' '
	num = num - 1

end
