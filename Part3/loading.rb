# loading

puts 'Идёт загрузка, ожидайте:  '
20.downto(0) do
    print "\r/"
    sleep(0.2)
    print "\r-"
    sleep(0.2)
    print "\r\\"
    sleep(0.2)
    print "\r|"
    sleep(0.2)
end