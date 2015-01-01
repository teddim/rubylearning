
M = 'land'
o = 'water'

world = [[ M,M,M,M,M,M,M,M,M,M,M],
	      [o,o,o,o,M,M,o,o,o,o,o],
	      [o,o,o,o,o,o,o,o,M,M,o],
	      [o,o,o,M,o,o,o,o,o,M,o],
	      [ M,M,M,M,M,M,M,M,M,M,M],
	      [o,o,o,o,M,M,M,M,o,o,o],
	      [o,o,o,M,M,M,M,M,M,M,o],
	      [o,o,o,M,M,o,M,M,M,o,o],
	      [o,o,o,o,o,o,M,M,o,o,o],
	      [o,M,o,o,o,M,o,o,o,o,o],
	      [M,o,o,o,o,o,o,o,o,o,M]]
	      
def continent_size world, x, y
	
 if  y > 10 || y < 0
	 puts 'the land is at the end of the world on y'
	 return 0
  end
  
   if  x > 10 || x < 0
	 puts 'the land is at the end of the world on x'
	 return 0

  end
  
 if world[y][x] != 'land'
    return 0
  end

 

  size = 1
  world[y][x] = 'counted land'

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world, x+1, y)
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts world  
puts continent_size(world ,6, 5)
puts world
