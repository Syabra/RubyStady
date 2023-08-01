# frozen_string_literal: true

# Класс робота
class Robot
  # Акцессоры — чтобы можно было узнать координаты снаружи
  attr_accessor :x, :y, :num

  # Конструктор, принимает хеш. Если не задан — будет пустой хеш.
  # В хеше мы ожидаем два параметра — начальные координаты робота,
  # если не заданы, будут по умолчанию равны нулю.
  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right
    self.x += 1
  end

  def left
    self.x -= 1
  end

  def up
    self.y += 1
  end

  def down
    self.y -= 1
  end

  def label
    "*"
  end
end

class Dog
  # Акцессоры — чтобы можно было узнать координаты снаружи
  attr_accessor :x, :y, :num

  # Конструктор, принимает хеш. Если не задан — будет пустой хеш.
  # В хеше мы ожидаем два параметра — начальные координаты робота,
  # если не заданы, будут по умолчанию равны нулю.
  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right
    self.x += 2 if x < 12
  end

  def left
  end

  def up
  end

  def down
    self.y -= 2 if y > -12
  end

  def label
    "@"
  end
end

# Класс «Командир», который будет командовать и двигать роботов
class Commander
  # Дать команду на движение робота. Метод принимает объект
  # и посылает (send) ему случайную команду.
  def move(who)
    m = %i[right left up down].sample
    who.send(m)
  end
end

# Создать объект командира,
# командир в этом варианте программы будет один
commander = Commander.new

# Массив из 10 роботов
arr = Array.new(10) { Robot.new }
# ...и одной собаки. Т.к. собака реализует точно такой же интерфейс,
# все объекты в массиве «как будто» одного типа.
arr.push(Dog.new(x: -12, y: 12))
arr.push(Dog.new(x: -11, y: 12))
arr.push(Dog.new(x: -12, y: 11))

# В бесконечном цикле (для остановки программы нажмите ^C)
loop do
  # Хитрый способ очистить экран
  puts "\e[H\e[2J"
  # Рисуем воображаемую сетку. Сетка начинается от -30 до 30 по X
  # и от 12 до -12 по Y
  12.downto(-12) do |y|
    -12.upto(12) do |x|
      # Проверяем, есть ли у нас в массиве кто-то с координатами x и y.
      # Заменили «any?» на «find» и записали результат в переменную
      somebody = arr.find { |somebody| somebody.x == x && somebody.y == y }
      # Если найден, рисуем звездочку, иначе точку
      if somebody
        # Рисуем что-то, «*» или «@», но что это — мы не знаем!
        print somebody.label
      else
        print "."
      end
    end
    # Просто переводим строку:
    puts
  end

  # Проверка столкновения. Если есть два объекта с одинаковыми
  # координатами и их «label» не равны, то, значит, робот поймал собаку.
  game_over = arr.combination(2).any? do |a, b|
    a.x == b.x && a.y == b.y && a.label != b.label
  end
  if game_over
    puts "Game over"
    exit
  end

  game_over = arr.combination(3).any? do |a, b, c|
    a.x == 12 && b.x == 12 && c.x == 12 && a.y == -12 && b.y == -12 && c.y == -12
  end
  if game_over
    puts "-=  Win!!!  =-"
    exit
  end
  # Каждого робота двигаем в случайном направлении
  arr.each do |somebody|
    commander.move(somebody)
  end
  # Задержка в полсекунды
  sleep 0.5
end
