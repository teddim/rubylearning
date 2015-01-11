def sort the_array
  for i in 0..the_array.length-1
    #puts the_array[i]
    for j in i+1..the_array.length-1
      if the_array[j].downcase < the_array[i].downcase
      temp = the_array[j]
      the_array[j] = the_array[i]
      the_array[i] = temp
      #puts '...' + the_array[j].to_s
    end
    end

  end
  return the_array
end

puts 'array is empty. Expect []:'
u_array = []
answer = sort u_array
puts answer.to_s

puts 'array has 1 item. Expect [dog]:'
u_array = ['dog']
answer = sort u_array
puts answer.to_s

puts 'array has 2 items. Expect [cat,dog]:'

u_array = ['dog','cat']
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [cat,dog,elephant]:'

u_array = ['dog','cat','elephant']
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [cat,dog,elephant]:'

u_array = ['dog','elephant','cat']
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [cat,dog,elephant]:'

u_array = ['cat','elephant','dog']
answer = sort u_array
puts answer.to_s


puts 'array has 4 items. Expect [cat,dog,elephant,frog]:'

u_array = ['cat','elephant','frog','dog']
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [cat,dog,elephant,frog]:'

u_array = ['dog','frog','cat','elephant']
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect[cat,dog,elephant,frog]:'

u_array = ['dog','frog','elephant','cat']
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [cat,dog,elephant,frog]:'

u_array = ['elephant','cat','dog','frog']
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [cat,Dog,elephant,frog]:'

u_array = ['elephant','cat','Dog','frog']
answer = sort u_array
puts answer.to_s
