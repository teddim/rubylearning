def teddi_sort givenarray
	recursive_sort givenarray, []
end
     
def recursive_sort original_array, sorted_array
puts 'original_array:' + original_array.to_s
puts 'sorted_array:' + sorted_array.to_s

stillunsorted_array = []

  if original_array.length == 0
	  puts 'get out of here:' + sorted_array.to_s
	 
  end
  
if sorted_array.length == 0
	sorted_array.push original_array.pop
	recursive_sort original_array, sorted_array
end



    if sorted_array.last > original_array.last 
	    
	stillunsorted_array.push  sorted_array.pop
	sorted_array.push original_array.pop
	puts 'stillunsorted:' + stillunsorted_array.to_s
	puts 'original_array:' + original_array.to_s
	puts 'sorted_array:' + sorted_array.to_s
	
	puts 'recurse >'
	
	 recursive_sort original_array, sorted_array
    end

  if sorted_array.last == original_array.last
	
	sorted_array.push original_array.pop
	puts 'stillunsorted:' + stillunsorted_array.to_s
	puts 'original_array:' + original_array.to_s
	puts 'sorted_array:' + sorted_array.to_s
	
	puts 'recurse =='
	
	 recursive_sort original_array, sorted_array

    end

 #switch places if compare is less
     if sorted_array.last < original_array.last
	sorted_array.push original_array.pop
	
	 puts 'stillunsorted:' + stillunsorted_array.to_s
	
	puts 'original_array:' + original_array.to_s
	puts 'sorted array:' + sorted_array.to_s
puts 'recurse <'
	
	 recursive_sort original_array, sorted_array
	 	 

     end
	
   end

puts 'Give me as many words as you\'d like. Press enter on an empty line when you are done:'
nextword = gets.chomp

favorites = []

while true
	
	if nextword == ''
	break
	end

favorites.push nextword

nextword = gets.chomp

end

puts teddi_sort favorites
#puts favorites.sort.to_s

#if favorites.teddi_sort == favorites.sort
#	puts 'they are the same! Woot!'
#end