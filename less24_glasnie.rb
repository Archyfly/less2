string_az = ("a".."z").to_a #заполняем массив
alf_number = Hash[string_az.zip(1..26).to_a] #заполняем хэш по порядку
alf_number_sort = Hash.new
vowels = ["a","e","i","o","u"]
alf_number.each do |key, value|
  vowels.each do 
    |g| alf_number_sort[key] = value if key == g
  end
end
print alf_number_sort

#print glas
#print string_az
#print alf_number
#if i =~ /[aeiou]/

