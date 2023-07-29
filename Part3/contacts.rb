=begin
Задайте базу данных (хеш) своих контактов. Для каждого контакта
(фамилия) может быть задано три параметра: email, cell_phone (номер
мобильного телефона), work_phone (номер рабочего телефона). Напи-
шите программу, которая будет спрашивать фамилию и выводить на
экран контактную информацию.
=end

contactHash = {
    'Yauhen' => {
        email: 'yauh@gmail.com',
        cell_phone: '+4822113344',
        work_phone: '+4811223344'
    },
    'Vadik' => {
        email: 'Killer@gmail.com',
        cell_phone: '+481505407',
        work_phone: ''
    },
    'Vlados' => {
        email: 'MegaGandgubas@gmail.com',
        cell_phone: '',
        work_phone: '+3753358008619'
    },
    'Shkura23' => {
        email: '',
        cell_phone: '+48778778778',
        work_phone: ''
    }
}

contactHash.default = 'Контакт отсутствует'

print 'Веведите имя: '
name = gets.strip


puts contactHash[name]
puts "\n\n"


puts '-= Список контактов =-'
contactHash.each do |name, info|
    puts "#{name} ----- Cell phone: #{info[:cell_phone]}"
end