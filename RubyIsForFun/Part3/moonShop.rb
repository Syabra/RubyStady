# Лунный магазин

obj = {
    soccer_ball: 410,
    tennis_ball: 58,
    golf_ball: 45
}

puts 'Какие мячи вы бы желали приобрести?'
puts 'У нас в ассортименте имеются ФУТБОЛЬНЫЕ мячи: '
socBallCount = gets.to_i
puts 'Обратите внимание на прекрасные тенисные мячи: '
tennBallCount = gets.to_i
puts 'А также мячи для гольфа: '
golfBallCount = gets.to_i

weightEarth = 0
weightMoon = 0

if socBallCount > 0 
    weightEarth += obj[:soccer_ball] * socBallCount
    weightMoon += weightEarth / 6
end
if tennBallCount > 0
    weightEarth += obj[:tennis_ball] * tennBallCount
    weightMoon += weightEarth / 6
end
if golfBallCount > 0
    weightEarth += obj[:golf_ball] * golfBallCount
    weightMoon += weightEarth / 6
end

puts "Общий вес приобретаемых мячей на земле: #{weightEarth},\nна луне: #{weightMoon}"