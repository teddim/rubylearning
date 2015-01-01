def find_smallest list, smallest

	if list.length == 0
		puts 'list length is 0'
		smallest
	
	else if smallest == -1
		puts smallest = list.pop
		find_smallest list, smallest
	
	else if smallest != -1
		candidate = list.pop
		
		puts candidate.to_s + ':' + list.length.to_s
		if candidate < smallest
				smallest = candidate
		end
		
		find_smallest list, smallest
			
	end
	end
	end

end

numbers = [ 7, 2, 8, 6, 1, 12 ]
answer = find_smallest numbers,  -1
puts 'answer:' + answer.to_s

sorted_array = [] 
sorted_array.push answer
puts 'sorted array is:' + sorted_array.to_s