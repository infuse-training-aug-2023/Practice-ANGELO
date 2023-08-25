class Exercise
  def average(serial_average)
    values = serial_average.split("-")
    if values.length == 3
      regex = /\d{3}-\d{2}.\d{2}-\d{2}.\d{2}/
      if serial_average.match?(regex)
        average_values = format("%.2f", (values[1].to_f + values[2].to_f) / 2)
        result = values[0] + "-" + average_values.to_s
        return result
      end
    end
    return "Invalid Input"
  end
end
