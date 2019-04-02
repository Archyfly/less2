array = [1, 1]
i = 1
while array[i] < 100
 s = array[i] + array [i-1]
 array << s.to_i
 i = i + 1
end
puts "array while = #{array[0..i-1]}"

array = [1, 1]
i = 1
loop do
  break if array[i] > 100
  s = array[i] + array [i-1]
  array << s.to_i
  i = i + 1
end
puts "array loop = #{array[0..i-1]}"
