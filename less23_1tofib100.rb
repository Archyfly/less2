array = [1, 1]
for i in 1..100
  s1 = array[i]
  s2 = array[i-1]
  array.push (s1+s2)
  i += 1
end
puts array

