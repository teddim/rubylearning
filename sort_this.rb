def sort some_array
  recursive_sort some_array, []

end

def recursive_sort unsorted_array, sorted_array

  if unsorted_array == []
    return []

  else if unsorted_array.length == 1
    return unsorted_array

  else if unsorted_array.length == 2 #compare the two numbers

      if unsorted_array[0] < unsorted_array[1]
        sorted_array = [unsorted_array[0],unsorted_array[1]]
        return sorted_array
      else
        sorted_array = [unsorted_array[1],unsorted_array[0]]
        return sorted_array
      end
  else if unsorted_array.length >= 3 #compare the numbers

    if unsorted_array[0] < unsorted_array[1]
      if unsorted_array[0] < unsorted_array[2]
        num = unsorted_array.length - 1
        sorted_array = [unsorted_array[0]] + (recursive_sort (unsorted_array - [unsorted_array[0]]), sorted_array)
        puts 'sorted_array:' + sorted_array.to_s
        puts 'unsorted_array:' + unsorted_array.to_s

        return sorted_array
      else # unsorted_array[0] > unsorted_array[2]
        num = unsorted_array.length - 1
        puts 'look here'
        puts 'sorted_array:' + sorted_array.to_s
        puts 'unsorted_array:' + unsorted_array.to_s
      # something is wrong here
        sorted_array = [unsorted_array[2]] + (recursive_sort (unsorted_array- [unsorted_array[2]]), sorted_array)
        puts 'sorted_array:' + sorted_array.to_s
        puts 'unsorted_array:' + unsorted_array.to_s
        return sorted_array
      end
    else
      num = unsorted_array.length - 1
      stillunsorted_array = unsorted_array[1..num] + [unsorted_array[0]]
      sorted_array =  (recursive_sort stillunsorted_array, sorted_array)
      #puts 'sorted_array:' + sorted_array.to_s
      #puts 'unsorted_array:' + unsorted_array.to_s

      return sorted_array
    end

    if unsorted_array[0] > unsorted_array[1]
      #puts 'sorted_array:' + sorted_array.to_s
      #puts 'unsorted_array:' + unsorted_array.to_s

      if unsorted_array[1] < unsorted_array[2]
        return [unsorted_array[1]]
      else
        return [unsorted_array[2]]
      end
    end

  end

  end
  end
  end

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
