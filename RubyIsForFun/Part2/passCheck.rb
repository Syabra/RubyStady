# Проверка логина и пароля

2.downto(0) do |i|

    print 'Login:    '
    log = gets.chomp
    print 'Password: '
    pass = gets.chomp.to_s
    
    if log == 'admin' && pass == '12345'
        puts 'Доступ к банковской ячейке разрешён'
        break
    else
        if i == 0
            puts 'В доступе отказано'
            exit
        end
        puts 'Логин или пароль не верен, попробуйте ещё раз'
        puts "\n\n"
    end
end

puts 'Ты украл приватные данные!'
puts 'Я знаю где ты живешь! Удали чужие данные!!!! Тобi пiZда!!!!!'
