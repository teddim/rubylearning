
def iterate_me the_array
  for i in 0..the_array.length-1
    puts the_array[i]
    for j in i+1..the_array.length-1
      puts '...' + the_array[j].to_s
    end

  end
end


# puts 'array is empty. Expect [1,2,3,4]:'
u_array = [1,2,3,4]
answer = iterate_me u_array
#puts answer.to_s
