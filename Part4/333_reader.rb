# frozen_string_literal: true

data = File.read('passwords.txt')
data.each_line do |line|
    puts "#{line.chomp}  -  #{line.size}"
end