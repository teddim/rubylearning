
def say_moo number_of_moos
puts 'moooooo...' *  number_of_moos
return 'hahahaha'
end

return_val = puts say_moo 3
puts   return_val.to_s
