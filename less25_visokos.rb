puts "Enter your date. Enter your day number (1-31):"
  user_day = gets.chomp.to_i
puts "Enter your month (1-12):"
  user_month = gets.chomp.to_i
puts "Enter your year:"
  user_year = gets.chomp.to_i

if user_day <= 31 && user_day > 0 && user_month <= 12 && user_month > 0 && user_year > 0
  months_days = {
      1 => 31,
      2 => 28,
      3 => 31,
      4 => 30,
      5 => 31,
      6 => 30,
      7 => 31,
      8 => 31,
      9 => 30,
      10 => 31,
      11 => 30,
      12 => 31
  }
  if user_year % 400 == 0 || user_year % 4 == 0 && user_year % 100 != 0
    months_days[2] = 29
  end
  order_num = 0 #переменная для суммирования порядкового номера
  months_days.each_key { |key|
  if key < user_month
    order_num = months_days[key] + order_num
  end
  }
  puts "Your date serial number is: #{order_num + user_day}"
else
  puts "Enter correct date!"
end
