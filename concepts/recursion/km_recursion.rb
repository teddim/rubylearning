# This is a recursion test


def a_recursion l
  if l == []
    []
  else
    [l.pop] + ( a_recursion l )
  end
end

puts (a_recursion [1,2,3,4,5]).to_s
