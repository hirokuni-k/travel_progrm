plans = [
  { name: "沖縄旅行", price: 10000 },
  { name: "北海道旅行", price: 20000 },
  { name: "吸収旅行", price: 15000 },
]

puts "旅行プランを選択して下さい。"
plans.each.with_index(1) do |plan, i|
  puts "#{i}.#{plan[:name]} (#{plan[:price]}円)"
end

while true
  print "プランの番号を選択>"
  select_plans_num = gets.to_i
  break if (1..3).include?(select_plans_num)
  puts "1~3の番号を入力して下さい"
end
chosen_plan = plans[select_plans_num - 1]
puts "#{chosen_plan[:name]}ですね。"
puts "何名で予約されますか？"
while true
  print "人数を入力>"
  number_of_people = gets.to_i
  break if number_of_people >= 1
  puts "1名以上を入力して下さい"
end

puts "#{number_of_people}名ですね。"
total_price = chosen_plan[:price] * number_of_people
if number_of_people >= 5
  puts "5名以上なので10%割引となります"
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"
