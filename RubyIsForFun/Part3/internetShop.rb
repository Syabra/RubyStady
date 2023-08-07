=begin
Корзина пользователя в интернет-магазине определена следующим
массивом (qty — количество единиц товара, которое пользователь
хочет купить, type — тип):
=end

inv = {
    soccer_ball: { available: 8, price_per_item: 100 },
    tennis_ball: { available: 12, price_per_item: 30 },
    golf_ball: { available: 30, price_per_item: 5 }
}

# =begin
cart = [
    {type: :soccer_ball, qty: 2},
    {type: :tennis_ball, qty: 4}
]
# =end

wantToBuy = false
# cart = [{}]
# Опросник для создания карты покупок
=begin
puts 'Какие мячи вы бы желали приобрести?'
print 'У нас в ассортименте имеются ФУТБОЛЬНЫЕ мячи(Y/N): '
wantToBuy = true if gets.to_s.chomp.upcase == 'Y'
if wantToBuy
    puts 'Сколько мячей желаете приобрести?'
    socBallCount = gets.to_i
    cart = [{type: :soccer_ball, qty: socBallCount }]
    wantToBuy = false
end
print 'ТЕННИСНЫЕ мячи(Y/N): '
wantToBuy = true if gets.to_s.chomp.upcase == 'Y'
if wantToBuy
    puts 'Сколько мячей желаете приобрести?'
    tennisBallCount = gets.to_i
    cart.push([{type: :tennis_ball, qty: tennisBallCount }])
    wantToBuy = false
end
print 'Мячи для гольфа(Y/N): '
wantToBuy = true if gets.to_s.chomp.upcase == 'Y'
if wantToBuy
    puts 'Сколько мячей желаете приобрести?'
    golfBallCount = gets.to_i
    cart.push([{type: :golf_ball, qty: golfBallCount }])
    wantToBuy = false
end
=end


# Проверка возможности удовлетворения спроса

puts cart
@summ = 0

# =begin
# Вариант с each
# Не работает с созданной по опоснику картой(

cart.each {|cart_item| @summ += cart_item[:qty] * inv[cart_item[:type]][:price_per_item] if cart_item[:qty] < inv[cart_item[:type]][:available]}

# =end


=begin
# Вариант с while
# Не работает с созданной по опоснику картой(

i = 0
while i < cart.size
    if inv[cart[i][:type]][:available] > cart[i][:qty]
        puts "Товар #{cart[i][:type]} доступен"
        summ += cart[i][:qty] * inv[cart[i][:type]][:price_per_item]
    else
        puts "Товар #{cart[i][:type]} на складе отсутствует необходимое количество"
        puts "В наличии #{inv[cart[i][:type]][:available]}"
    end
    i += 1
end
=end

puts "К оплате #{@summ}"
