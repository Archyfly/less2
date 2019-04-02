string_az = ("a".."z").to_a #заполняем массив
vowels = ["a","e","i","o","u"]
string_az.each.with_index(1) { |value, index | puts "#{index}: #{value}" if vowels.include?(value)}
