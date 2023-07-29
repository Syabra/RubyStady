
arr = [ %w(a b c),
        %w(d e f),
        %w(g h i)]

puts "#{arr[0][0]}   #{arr[0][2]}"
puts "  #{arr[1][1]}   " 
puts "#{arr[2][0]}   #{arr[2][2]}"
puts "\n\n"

arr1 = Array.new(3) {Array.new(3) {'some'}}
arr1.each do |row|
    row.each do |value|
        print "#{value} "
    end
    puts "\n"
end

puts "\n"
print 'Ввожу команду arr[1][1].upcase!'
arr1[1][1].upcase!
puts "\n"

arr1.each do |row|
    row.each do |value|
        print "#{value} "
    end
    puts "\n"
end

puts "\n"