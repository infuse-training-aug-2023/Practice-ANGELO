class Exercise
  def initialize(sports)
    @sports = sports
  end

  def skip_sports(skip_value)
    if skip_value < @sports.length
      updated_sports = []
      @sports.each_with_index do |value, index|
        key_value = "#{index}:#{value}"
        updated_sports.append(key_value)
      end
      return updated_sports[skip_value..]
    end
    return "Array index is out of bound"
  end
end
