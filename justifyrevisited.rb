line_width = 60
chapters = [['Chapter 1: Getting Started', 'page 1'],
['Chapter 2: Numbers', 'page 9'],['Chapter 3: Letters', 'page 13']]

puts ('Table of Contents'.center(line_width) )

chapters.each do |chap|
puts (chap[0].ljust(line_width/2) + chap[1].rjust(line_width/2) )

end