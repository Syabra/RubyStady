=begin
Имеются следующие данные:
data = {
soccer_ball: { name: 'Футбольный мяч', weight: 410, qty: 5 },
tennis_ball: { name: 'Мяч для тенниса', weight: 58, qty: 10 },
golf_ball: { name: 'Мяч для гольфа', weight: 45, qty: 15 }
}
Написать программу, которая будет выводить на экран:
На складе есть:
Футбольный мяч, вес 410 грамм, количество: 5 шт.
Мяч для тенниса, вес 58 грамм, количество: 10 шт.
Мяч для гольфа, вес 45 грамм, количество: 15 шт.
=end

data = {
    soccer_ball: { name: 'Футбольный мяч', weight: 410, qty: 5 },
    tennis_ball: { name: 'Мяч для тенниса', weight: 58, qty: 10 },
    golf_ball: { name: 'Мяч для гольфа', weight: 45, qty: 15 }
}

puts 'Нв складе есть:'

data.each do |key, value|
    puts "#{value[:name]}, вес #{value[:weight]} грамм, количество: #{value[:qty]} шт."    
end