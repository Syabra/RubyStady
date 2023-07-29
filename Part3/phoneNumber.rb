# Трансляция буквенного номерв в цифровой

def phone_to_number(arr)
    i = 0
    arr.each_char do |nb|
        nb = nb.upcase
        if nb == 'A' || nb == 'B' || nb == 'C'
            @number[i] = 2
            i += 1
        elsif nb == 'D' || nb == 'E' || nb == 'F'
            @number[i] = 3
            i += 1
        elsif nb == 'G' || nb == 'H' || nb == 'I'
            @number[i] = 4
            i += 1
        elsif nb == 'J' || nb == 'K' || nb == 'L'
            @number[i] = 5
            i += 1
        elsif nb == 'M' || nb == 'N' || nb == 'O'
            @number[i] = 6
            i += 1
        elsif nb == 'P' || nb == 'R' || nb == 'Q' || nb == 'S'
            @number[i] = 7
            i += 1
        elsif nb == 'T' || nb == 'U' || nb == 'V'
            @number[i] = 8
            i += 1
        elsif nb == 'W' || nb == 'X' || nb == 'Y' || nb == 'Z'
            @number[i] = 9
            i += 1
        else 
            @number[i] = nb
            i += 1
        end
    end
    
end

puts 'Введите номер телефона: '

phone = gets.to_s.chomp
@number = Array.new(phone.size)

phone_to_number(phone)
puts 'Транслированный номер: '

@number.each {|a| print a}
puts "\n"
