require 'test/unit'
require_relative 'exercise-04'

class TestSkipSports < Test::Unit::TestCase
    @@sports = ["Cricket", "TT", "Football", "Hockey"]

    def test_make_exercise_object
        objExercise = Exercise.new(@@sports)
        assert objExercise.instance_of? Exercise
    end
    def test_skip_sports
        objExercise = Exercise.new(@@sports)
        actualOutput = [["1:TT", "2:Football", "3:Hockey"], ["2:Football", "3:Hockey"], ["3:Hockey"], []]
        assert_equal(actualOutput[0], objExercise.skip_sports(1))
        assert_equal(actualOutput[1], objExercise.skip_sports(2))
        assert_equal(actualOutput[2], objExercise.skip_sports(3))
        assert_equal(actualOutput[3], objExercise.skip_sports(4))
    end
end
