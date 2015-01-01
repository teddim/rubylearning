
flavor = 'vanilla'
foods = [ 'artichoke' , 'brioche' , 'caramel', ['cookies', 'candy','fudge'] , flavor]
puts foods
puts
puts foods.to_s

puts
puts foods.join(' , ')  + ' . '

5.times do
		puts ['yes', 'no', 'maybe so'].join('/') + '.'
	end
	
puts foods.reverse
puts foods.length
puts 'I do not like ' + foods.join(' , ') + ' . '

puts 'pop and push practice--------------'
puts '----------------------------------------'

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whispers on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length

puts 'array join practice'
array1 = ['word']
array2 = ['page']

