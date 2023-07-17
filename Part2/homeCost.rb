# Show how mutch left

puts 'How many mounth do you pay?'
years = gets.to_i
cost = 500000
allPeriod = 30
loanPersent = 0.0917
yearRate = cost / allPeriod

puts "There's still money left to pay: #{cost - yearRate * years} zl"
puts "Per year: #{(cost - yearRate * years) / (allPeriod - years)} zl"

# Show dept for 1 year in kredit
puts "Loan with #{loanPersent * 100}%"
puts "Left #{allPeriod - years} years)"
creditLoanSum = 0
(allPeriod-years).times do |i|
    costLeft = cost - (years + i) * yearRate
    creditLoanSum = creditLoanSum + (costLeft * loanPersent).round 
    puts "During next #{i + 1} year you must pay for the loan: #{(costLeft * loanPersent).round} zl"
    puts "Mounts rate: #{yearRate / 12 + (costLeft*loanPersent/12).round} zl"
end
puts "Loan cost: #{creditLoanSum} zl"
puts "Loan + credit summ: #{creditLoanSum + cost} zl"   
