# frozen_string_literal: true

# Обобщённый класс игрока
class Player
  attr_accessor :x, :y

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
end
# Класс робота
class Robot < Player
  
  def label
    '*'
  end
end

# Класс собаки
class Dog < Player
  
  def right
    self.x += 2 if x < 12
  end

  def down
    self.y -= 2 if y > -12
  end

  def label
    '@'
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
3.times do
  arr.push(Dog.new(x: -12, y: 12))
end
# В бесконечном цикле (для остановки программы нажмите ^C)
loop do
  # Хитрый способ очистить экран
  puts "\e[H\e[2J"
  # Рисуем воображаемую сетку. Сетка начинается от -30 до 30 по X
  # и от 12 до -12 по Y
  12.downto(-12) do |y|
    -12.upto(12) do |x|
      # Проверяем, есть ли у нас в массиве кто-то с координатами x и y.
      somebody = arr.find { |somb| somb.x == x && somb.y == y }
      # Если найден, рисуем звездочку, иначе точку
      if somebody
        # Рисуем что-то, «*» или «@», но что это — мы не знаем!
        print somebody.label
      else
        print '.'
      end
    end
    # Просто переводим строку:
    puts
  end

  game_over = arr.combination(2).any? do |a, b|
    a.x == b.x && a.y == b.y && a.label != b.label
  end
  if game_over
    puts 'Game over'
    exit
  end

  win = arr.combination(3).any? do |a, b, c|
    a.x == 12 && b.x == 12 && c.x == 12 && a.y == -12 && b.y == -12 && c.y == -12
  end
  if win
    puts '-=  Win!!!  =-'
    exit
  end
  # Каждого робота двигаем в случайном направлении
  arr.each do |somebody|
    commander.move(somebody)
  end
  # Задержка в полсекунды
  sleep 0.5
end
