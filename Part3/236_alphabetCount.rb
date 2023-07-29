=begin
Нам нужно написать метод, который будет возвращать true, если в предло-
жении содержатся все буквы, и false, если каких-то букв не хватает
=end

require 'set'

def alph(str)
    set = Set.new

    str.each_char do |c|
        set.add(c) if c >= 'a' && c <= 'z'
    end

    if set.size == 26
        true
        puts 'Присутствуют все буквы алфавита'
    else
        puts 'Неа(    долполните строку'
    end
end

print 'Введите текст: '
alph(gets.downcase)