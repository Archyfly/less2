#сперва определяем високосный ли год
#формируем порядок для невисокосного и високосного
#ищем
puts "Enter your date. Enter your day number (1-31):"
  user_day = gets.chomp.to_i
puts "Enter your month (1-12):"
  user_month = gets.chomp.to_i
puts "Enter your year:"
  user_year = gets.chomp.to_i
visokos = false
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
  if user_year % 400 == 0 
    visokos = true
    elsif user_year % 100 == 0 
    visokos = false
    elsif user_year % 4 == 0
    visokos = true
  end
  puts visokos

  if visokos 
    months_days[2] = 29
    day_numbers = Hash[months_days.zip(1..366).to_a]
  else
    months_days[2] = 28
    day_numbers = Hash[months_days.zip(1..365).to_a]	
  end

  order_num = 0 # переменная для суммирования порядкового номера
  months_days.delete_if { |key, value| key >= user_month } # убираем из хэша лишние месяцы

  if user_month > 1 
    months_days.each_value { |value| 
    order_num = order_num + value 
    }
    puts "Порядковый номер вашей даты = #{order_num + user_day}"
  end
else
  puts "Enter correct date"
end
