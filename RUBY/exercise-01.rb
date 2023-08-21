print "serial_average: "
serial_average = gets.chomp
values = serial_average.split('-')
average = format('%.2f', (values[1].to_f + values[2].to_f) / 2)
puts values[0] + "-" + average.to_s