require 'test/unit'
require_relative 'exercise-01'

class TestAverage < Test::Unit::TestCase
    def test_make_exercise_object
        objExercise = Exercise.new()
        assert objExercise.instance_of? Exercise
    end
    def test_check_average
        objExercise = Exercise.new()
        assert_equal("002-15.00", objExercise.average("002-10:00-20:00"))
        assert_equal("002-50.00", objExercise.average("002-100:00-00"))
        assert_equal("002-50.00", objExercise.average("002-100:00-one"))
    end
end

