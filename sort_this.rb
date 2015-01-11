def sort the_array
  for i in 0..the_array.length-1
    #puts the_array[i]
    for j in i+1..the_array.length-1
      if the_array[j] < the_array[i]
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

puts 'array has 1 item. Expect [4]:'
u_array = [4]
answer = sort u_array
puts answer.to_s

puts 'array has 2 items. Expect [3,4]:'

u_array = [4,3]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3,4,5]:'

u_array = [4,3,5]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3,4,5]:'

u_array = [4,5,3]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3,4,5]:'

u_array = [3,5,4]
answer = sort u_array
puts answer.to_s


puts 'array has 4 items. Expect [3,4,5,6]:'

u_array = [3,5,6,4]
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [3,4,5,6]:'

u_array = [4,6,3,5]
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [3,4,5,6]:'

u_array = [4,6,5,3]
answer = sort u_array
puts answer.to_s

puts 'array has 4 items. Expect [3,4,5,6]:'

u_array = [5,3,4,6]
answer = sort u_array
puts answer.to_s
