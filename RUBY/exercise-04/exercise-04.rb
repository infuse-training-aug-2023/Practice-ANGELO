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
      updatedSports = []
      sports.each_with_index do |value, index|
        keyValue = "#{index}:#{value}"
        updatedSports << keyValue
      end
      return updatedSports[num..]
  end
end

# sports = ["Cricket", "TT", "Football", "Hockey"]

# obj = Exercise.new(sports)
# print obj.skip_sports(1)
# print obj.skip_sports(2)
# print obj.skip_sports(3)
# print obj.skip_sports(4)
