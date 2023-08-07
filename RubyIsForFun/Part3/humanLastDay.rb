# Эмулятор судного дня

@humans = 1000
@machines = 1000



# Вспомогательные методы

# Случайное значение true или falce
def luck?
    rand(0..1) ==1
end


# Метод уменьшение количества воюющих сторон
def boom
    diff = rand(1..200)
    if luck?
        @machines -= diff
        puts "- #{diff} машин уничтожено"
    else
        @humans -= diff
        puts "- #{diff} людей погибло"
    end
end

# Метод воспроизводит потери сторон
def reproduction
    diff = rand(1..200)
    if luck?
        @machines += diff
        puts "+ #{diff} машин в строю прибыло"
    else
        @humans += diff
        puts "+ #{diff} сопротивление пополнило ряды"
    end
end

# Метод возввращает случайное названое города
def random_city
    case dice = rand(1..5)
    when 1
        'Москва'
    when 2
        'Лос-Анджелес'
    when 3
        'Пекин'
    when 4
        'Лондон'
    else
        'Сеул'
    end
end

def random_sleep
    sleep rand(0.3..1.5)
end

# Оставшиеся в противостоянии
def stats
    puts "Осталось #{@humans} людей и #{@machines} машин"
end


###########################
# События
###########################


def event1 
    puts "Запущена ракета по городу #{random_city}"
    random_sleep
    boom
end

def event2
    puts "Применено радиоактивнок оружее в городе #{random_city}"
    random_sleep
    boom
end

def event3
    puts "Группа солдат прорывает оборону противника #{random_city}"
    random_sleep
    boom
end

def event4
    puts "Терминатор отправлен в прошлое #{random_city}"
    random_sleep
    boom
end

def event5
    puts "Празднование дня Святого Патрика!!!"
    random_sleep
    reproduction
    reproduction
end

def event6
    puts "В полку #{random_city} прибыло"
    random_sleep
    reproduction
end

###########################
# Проверка победы
###########################

def check_victory?
    true if @humans <= 0 || @machines <= 0
end

###########################
# Главный цикл
###########################
loop do
    if check_victory?
        puts "\nПротивостояние окончилось!"
        exit
    end

    case dice = rand(1..6)
    when 1 
        event1
    when 2 
        event2
    when 3 
        event3
    when 4 
        event4
    when 5 
        event5
    when 6 
        event6
    end
    stats
    random_sleep
end


