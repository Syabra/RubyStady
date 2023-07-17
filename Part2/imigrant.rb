# Имигрант

count = 0
puts 'У вас есть высшее образование? (y/n)'
ans = gets.chomp
count = count + 1 if ans == 'y' 
puts 'У вас есть опыт работы програмистом? (y/n)'
ans = gets.chomp
count = count + 1 if ans == 'y' 
puts 'У вас более трёх лет опыта? (y/n)'
ans = gets.chomp
count = count + 1 if ans == 'y' 

if count >= 2 
    puts 'Добро пожаловать в США!' 
else 
    puts 'Вопросы запомнил?      Ну тогда иди и поработай над ответами)'
end
