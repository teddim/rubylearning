puts 'Give me a starting year:'
startyear = gets.chomp.to_i

puts 'Give me an ending year:'
endyear = gets.chomp.to_i

if startyear > endyear
	puts 'your end year(' + endyear.to_s + ') is before your start year (' + startyear.to_s + '), please enter a new end year:'
	endyear = gets.chomp.to_i
end	
# rules
# divisible by 4,
# but not 100 
# unless divisible by 400
puts 'Here are all of the leap years between and including  ' + startyear.to_s + ' and ' + endyear.to_s + ':'
while true
	
leapcheck4 = startyear%4
leapcheck100 = startyear%100
leapcheck400 = startyear%400


	if leapcheck4 == 0 && leapcheck100 != 0
		puts startyear
		startyear = startyear + 1
		
	
	else if leapcheck4 == 0 && leapcheck100 == 0 && leapcheck400 == 0
		puts startyear
		startyear = startyear + 1
	
	else 
		startyear = startyear + 1
		
	end	
	end
	
	
	if startyear > endyear
		puts 'that\'s everything'
		break
		end
end
