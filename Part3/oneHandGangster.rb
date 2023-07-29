# Однорукий бандит

balance = 20
round = 0

# Метод анимирует вывод числа
def animate(sec)
    5.downto(sec) do |i|
    print "\r#{i}"    
    sleep(0.25)
    end
    print "\n"
    sleep(0.3)
end

print 'Ваш возраст: '
age = gets.to_i
if age < 18
    puts 'Сожалеем, но вам нет 18'
    exit
end

loop do
    puts 'Нажмите Enter, чтобы дёрнуть ручку..'
    gets

    x = rand(0..5)
    y = rand(0..5)
    z = rand(0..5)

    animate(x)
    animate(y)
    animate(z)

    #puts "Результат: #{x} #{y} #{z}"
    if x == 0 && y == 0 && z == 0
        balance = 0
        puts 'Ваш баланс обнулён('
    elsif
        x == 1 && y == 1 && z == 1
        balance += 10
        puts 'Баланс увеличился на +10$'
    elsif
        x == 3 && y == 3 && z == 3
        balance += 20
        puts 'Баланс увеличился на +20$'
    elsif
        (x == 3 && y == 3) || (y == 3 && z == 3) || (x == 3 && z == 3)
        balance += 5
        puts 'Баланс увеличился на +5$'
    elsif
        x == 1 && y == 2 && z == 3
        balance += 2
        puts 'Баланс увеличился на +2$'
    elsif
        x == 0 && y == 2 && z == 5
        balance += 2
        puts 'Баланс увеличился на +2$'    
    elsif
        x == 5 && y == 2 && z == 0
        balance += 2
        puts 'Баланс увеличился на +2$'    
    else
        balance -= 0.5
        puts 'Баланс уменьшился на -0.5$'
    end

    puts "Ваш баланс: #{balance}$"

    if balance <= 0
        puts 'Пополните баланс'
        exit
    end

    if balance > 20 && round > 5
        puts 'Если желаете снять выйгрыш, нажмите 5'
        take = gets.to_i
        if  take == 5
            puts "Поздравляем! Ваш выйгрыш #{balance}$"
            exit
        end

        round = 0
    end

    round += round + 1

end


