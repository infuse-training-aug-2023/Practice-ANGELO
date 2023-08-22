require 'test/unit'
require_relative 'exercise-04'

class TestSkipSports < Test::Unit::TestCase
    @@sports = ["Cricket", "TT", "Football", "Hockey"]
    def test_make_exercise_object
        object_exercise = Exercise.new(@@sports)
        assert object_exercise.instance_of? Exercise
    end
    def test_skip_sports
        object_exercise = Exercise.new(@@sports)
        actual_output = [["1:TT", "2:Football", "3:Hockey"], ["2:Football", "3:Hockey"], ["3:Hockey"], []]
        assert_equal(actual_output[0], object_exercise.skip_sports(1))
        assert_equal(actual_output[1], object_exercise.skip_sports(2))
        assert_equal(actual_output[2], object_exercise.skip_sports(3))
        assert_equal(actual_output[3], object_exercise.skip_sports(4))
    end
end
