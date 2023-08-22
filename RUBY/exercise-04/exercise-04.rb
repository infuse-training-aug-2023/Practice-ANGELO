class Exercise
  def initialize(sports)
      @sports = sports
  end
  def sports=(sports)
      @sports = sports
  end
  def sports
      return @sports
  end
  def skip_sports(skip_value)
      updated_sports = []
      sports.each_with_index do |value, index|
        key_value = "#{index}:#{value}"
        updated_sports << key_value
      end
      return updated_sports[skip_value..]
  end
end
