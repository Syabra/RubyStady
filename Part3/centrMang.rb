=begin
Центр управления полетами поручил вам задание написать метод
launch (от англ. «запуск»), который будет принимать набор опций в
виде хеша и отправлять в космос астронавтов Белку и/или Стрелку.
Метод должен принимать следующие параметры:
=end

def launch(options={})
    puts "\n  -= К старту готовы! =- \n\n"
    sleep(1.2)
    angl = options[:angle] || 90
    astr = options[:astronauts] || [:belka, :strelka]
    del = options[:delay] || 5

    del.downto(1) do |n|
        print n, ".."
        sleep(0.6)
    end
    print "   Полетели!!!\n"
    sleep(1)
    puts "\nРакета запещена под углом #{angl}"
    sleep(0.7)
    puts "На борту: #{astr}"
    puts '=' * 40
end

puts 'Подготовка к запуску ракеты в космос!'
print 'Введите угол запуска: '
ang = gets.to_i
print "\nКого отправим в полет (:belka and/or :strelka)? "
ast = []
ast[0] = gets.chomp.capitalize || nil
ast[1] = gets.chomp.capitalize || nil
print "\nВремя до старта: "
de = gets.to_i

launch(angle: ang, astronauts: ast, delay: de)
launch(angle: 91)
launch(delay: 3)
launch(delay: 3, angle: 91)
launch(astronauts: [:belka])