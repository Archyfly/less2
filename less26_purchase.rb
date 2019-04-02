cart = {}
itog_summ = 0 # переменная вне цикла, для итогового суммирования
loop do
  puts "What do you want to buy ? :"
  purchase = gets.chomp.to_s # товар
  break if purchase == "STOP"
  puts "What cost of one item ? :" #стоимость одной покупки
  item_cost = gets.chomp.to_f
  puts "How many items you want to buy ? :" # количество единиц
  items = gets.chomp.to_i

  sub_summ = {}  # собирает в хэш  сумму*количество по каждой покупке
  sub_itog = {}  # собирает в хэш  сумму и количество по каждой покупке

  sub_summ[item_cost] = items*item_cost #Находим общую стоимость покупки
  sub_itog[items] = sub_summ # записываем в хэш стоимость за единицу и общую стоимость
  puts sub_summ # проверка значений в течении выполнения
  puts sub_itog # проверка значений в течении выполнения
  cart[purchase] = sub_itog # суём в корзину
  sub_summ.each_value { |value| itog_summ = value + itog_summ}
end
#puts itog_summ
puts "Items in your cart is:"
puts cart
puts "Result summ of your purchases:"
puts itog_summ
