=begin
Напишите программу, которая считает частотность букв и выводит
на экран список букв и их количество в предложении.
=end

print 'Введите строку, а мы посчитаем колличество букв: '

str = gets.to_s.chomp
arr = str.split('')
hh = Hash.new(0)

arr.each do |letter|
    hh[letter] += 1
end

puts hh.inspect