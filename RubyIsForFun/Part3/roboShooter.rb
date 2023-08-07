###############################
# ОБЪЯВЛЯЕМ МАССИВЫ
###############################
# массив для первой команды
@arr1 = Array.new(10, 100)
# массив для второй команды
@arr2 = Array.new(10, 100)
###############################
# АТАКА
###############################
# Метод принимает массив для атаки
def attack(arr)
    sleep 1 # добавим sleep для красоты
    i = rand(0..9)
    damage = rand(30..100)
    if arr[i] < damage
        arr[i] = 0
        puts "Робот по индексу #{i} уничтожен"
    else
        arr[i] = arr[i] - damage
        puts "Ранен, но всё ещё в строю, #{arr[i]}"
    end
    sleep 1 # еще один sleep для красоты вывода
end

###############################
# ПРОВЕРКА ПОБЕДЫ
###############################
def victory?
    robots_left1 = @arr1.count { |x| x > 0 }
    robots_left2 = @arr2.count { |x| x > 0 }

    if robots_left1 == 0
        puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
        return true
    end

    if robots_left2 == 0
        puts "Команда 1 победила, в команде осталось #{robots_left2} роботов"
        return true
    end

    false
end 

###############################
# СТАТИСТИКА
###############################
def stats
    # количество живых роботов для первой и второй команды
    cnt1 = @arr1.count { |x| x > 0 }
    cnt2 = @arr2.count { |x| x > 0 }
    puts "1-ая команда: #{cnt1} роботов в строю"
    @arr1.each do |robots|
        print "#{robots} "
    end
    puts "\n"
    puts "2-ая команда: #{cnt2} роботов в строю"
    @arr2.each do |robots|
        print "#{robots} "
    end
    puts "\n"
end

###############################
# ГЛАВНЫЙ ЦИКЛ
###############################

loop do
    puts 'Первая команда наносит удар...'
    attack(@arr2)
    exit if victory?
    stats
    sleep 2
    puts 'Вторая команда наносит удар...'
    attack(@arr1)
    exit if victory?
    stats
    sleep 2
    puts # пустая строка
end