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
        return [unsorted_array[0]]
      else
        return [unsorted_array[1]]
      end
  else if unsorted_array.length == 3 #compare the two numbers

    if unsorted_array[0] < unsorted_array[1]
      if unsorted_array[0] < unsorted_array[2]
        return [unsorted_array[0]]
      else
        return [unsorted_array[2]]
      end
    end

    if unsorted_array[0] > unsorted_array[1]
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

puts 'array has 2 items. Expect [3]:'

u_array = [4,3]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3]:'

u_array = [4,3,5]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3]:'

u_array = [4,5,3]
answer = sort u_array
puts answer.to_s

puts 'array has 3 items. Expect [3]:'

u_array = [3,4,5]
answer = sort u_array
puts answer.to_s
