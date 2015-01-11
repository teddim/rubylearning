# shuffle an array
# for each item in the array swap it with a random other location in the array

def shuffle the_array
  if the_array.length <= 1
    puts 'there is nothing to shuffle!'
    return the_array
  end

  num = the_array.length
  for i in 0..the_array.length-1
    #puts the_array[i]
    for j in i+1..the_array.length-1
        temp = the_array[j]
        random_number = rand(num)
        the_array[j] = the_array[random_number]
        the_array[random_number] = temp
        #puts '...' + the_array[j].to_s

    end

  end
  return the_array
end

puts 'array is empty. Expect There is nothing to shuffle! []'
u_array = []
answer = shuffle u_array
puts answer.to_s

puts 'array has 1 item. Expect There is nothing to shuffle! [dog]:'
u_array = ['dog']
answer = shuffle u_array
puts answer.to_s

puts 'array has 2 items.Original Array- [dog,cat]:'

u_array = ['dog','cat']
answer = shuffle u_array
puts answer.to_s

puts 'array has 10 items. Original: 1,2,3,4,5,6,7,8,9,10]:'

u_array = [1,2,3,4,5,6,7,8,9,10]
answer = shuffle u_array
puts 'shuffle #1:'
puts answer.to_s

answer = shuffle u_array
puts 'shuffle #2:'
puts answer.to_s

answer = shuffle u_array
puts 'shuffle #3:'
puts answer.to_s

answer = shuffle u_array
puts 'shuffle #4:'
puts answer.to_s
