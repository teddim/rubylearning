#rules 
# I is 1
# V is 5
# X is 10
# L is 50
# C is 100
# D is 500
# M is 1000

puts "Enter your number:"

number = gets.chomp.to_i

roman =   'M' * (number/1000)
roman = roman +  'D' * ((number%1000 )/500)
roman = roman +  'C' * ((number%500)/100)
roman = roman +  'L' * ((number%100)/50)
roman = roman +  'X' * ((number%50)/10)
roman = roman +  'V' * ((number%10)/5)
roman = roman +  'I' * ((number%5)/1)

puts roman.to_s