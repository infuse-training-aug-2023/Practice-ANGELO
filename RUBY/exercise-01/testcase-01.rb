require 'test/unit'
require_relative 'exercise-01'

class TestAverage < Test::Unit::TestCase
    def test_make_exercise_object
        object_exercise = Exercise.new()
        assert object_exercise.instance_of? Exercise
    end
    def test_check_average
        object_exercise = Exercise.new()
        assert_equal("002-15.00", object_exercise.average("002-10:00-20:00"))
        assert_equal("002-50.00", object_exercise.average("002-100:00-00"))
        assert_equal("002-50.00", object_exercise.average("002-100:00-one"))
    end
end
