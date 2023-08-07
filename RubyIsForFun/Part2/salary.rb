# Give information abuot your salary on the year

puts 'Your salary?'
salary = gets.to_i
puts 'How much money do you want to save?'
persent = gets.to_i
puts "You salary per year: #{salary * 12 * 0.72}, and money on your save account: #{salary * 12 * 0.72 * persent / 100}"
puts "After 5 years you can save: #{salary * 12 * 5 * 0.72 * persent / 100}"
