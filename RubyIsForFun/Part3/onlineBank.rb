=begin
 Напишите хеш, который бы отображал состояние следующего прило-
 жения:
=end

cart = {
    personalData: 'Герман Оскаронович Блокчейн',
    balance: '$123.45',
    listOfTranzaktion: [{
        description: 'Сапоги',
        type: :outcome,
        summa: '40'
    },
    {   
        description: 'Зарплата (компания БЛИЖТ)',
        type: :income,
        summa: '1000'
    },
    {   
        description: 'Продажа вайчера',
        type: :income,
        summa: '300'
    },
    {   
        description: 'Велосипед',
        type: :outcome,
        summa: '200'
    },
    {   
        description: 'Протез для ноги бабушке',
        type: :outcome,
        summa: '300'
    }],
    visibility_filter: :show_all
}

=begin
 Напишите программу, которая будет принимать хеш, который вы
 определили в предыдущей задаче, и выводить результат на экран.
 Убедитесь, что переключатель работает и программа не выводит
 приход, если переключатель включен.
=end

if cart[:visibility_filter] == :show_all
    puts cart
else
    puts 'show_all - false'
end

cart[:visibility_filter] = :income
puts "\n visility_filter = :income \n\n"

if cart[:visibility_filter] == :income
    cart.each {|cart_item| puts cart_item[:listOfTranzaktion]}
else
    puts 'income - false'
end
