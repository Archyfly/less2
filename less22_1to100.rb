array = []
for i in 10..100
  array.push(i) if i % 5 == 0
  i += 5
end
puts array

