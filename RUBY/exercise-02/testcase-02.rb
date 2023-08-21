require 'test/unit'
require_relative 'exercise-02'

class TestCheckArray < Test::Unit::TestCase
    @@arr = [9, 5, 1, 2, 3, 4, 0, -1]

    def test_make_exercise_object
        objExercise = Exercise.new()
        assert objExercise.instance_of? Exercise
    end
    def test_element_at
        objExercise = Exercise.new()
        assert_equal(1, objExercise.element_at(@@arr, 2))        
        assert_equal(2, objExercise.element_at(@@arr, 3))
    end
    def test_inclusive_range
        objExercise = Exercise.new()
        assert_equal([1, 2, 3, 4], objExercise.inclusive_range(@@arr, 2,5))        
        assert_equal([5, 1, 2, 3, 4], objExercise.inclusive_range(@@arr, 1, 5))
    end
    def test_non_inclusive_range
        objExercise = Exercise.new()
        assert_equal([1, 2, 3], objExercise.non_inclusive_range(@@arr, 2, 5))        
        assert_equal([5, 1, 2, 3], objExercise.non_inclusive_range(@@arr, 1,5))
    end
    def test_start_and_length
        objExercise = Exercise.new()
        assert_equal(4, objExercise.start_and_length(@@arr, 2, 5))        
        assert_equal(5, objExercise.start_and_length(@@arr, 3, 7))     
        # assert_equal(4, objExercise.start_and_length(@@arr, 3, 7))
    end
end
