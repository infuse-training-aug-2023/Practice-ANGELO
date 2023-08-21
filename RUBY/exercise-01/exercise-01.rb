class Exercise
    def average(serial_average)
        values = serial_average.split('-')
        averageValues = format('%.2f', (values[1].to_f + values[2].to_f) / 2)
        result =  values[0] + "-" + averageValues.to_s
        return result
    end
end
