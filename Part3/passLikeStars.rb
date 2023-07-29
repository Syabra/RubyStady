# Выводит пароль в виде звёздочек

def change_pass(pass)
    secure = ''
    pass.split("").each do |i|
        secure = secure + '*'
    end

    if secure.length > 4
        puts "\nВаш пароль #{secure} - силён!"
    else 
        puts  "\nВаш пароль #{secure} - слабоват("
    end
end

puts 'Введите пароль: '
pas = change_pass(gets.to_s.chomp)