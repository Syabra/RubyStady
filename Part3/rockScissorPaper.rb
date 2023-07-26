# Камень ножницы бумага

print "(R)ock, (S)cissors, (P)aper?  "
s = gets.strip.capitalize
arr = Array.new [:Rock, :Scissors, :Paper]

if s == 'R'
    yourChoise = arr[0] 
elsif s == 'S'
    yourChoise = arr[1]
elsif s == 'P'
    yourChoise = arr[2]
else
    puts 'Не верные входные данные'
end
 

compChoise = arr[rand(0..2)]

if yourChoise == compChoise
    puts "#{yourChoise}  =  #{compChoise}"
    puts 'Ничья. Попробуй ещё раз'
elsif yourChoise == arr[0] && compChoise == arr[1]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Победа!'
elsif yourChoise == arr[1] && compChoise == arr[0]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Вы потерпели неудачу'
elsif yourChoise == arr[1] && compChoise == arr[2]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Победа!'
elsif yourChoise == arr[2] && compChoise == arr[1]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Вы потерпели неудачу'        
elsif yourChoise == arr[2] && compChoise == arr[0]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Победа!'
elsif yourChoise == arr[0] && compChoise == arr[2]
    puts "#{yourChoise}    #{compChoise}"
    puts 'Вы потерпели неудачу'    
end