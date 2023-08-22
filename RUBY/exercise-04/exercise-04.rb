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
  def skip_sports(num)
      updated_sports = []
      sports.each_with_index do |value, index|
        keyValue = "#{index}:#{value}"
        updated_sports << keyValue
      end
      return updated_sports[num..]
  end
end
