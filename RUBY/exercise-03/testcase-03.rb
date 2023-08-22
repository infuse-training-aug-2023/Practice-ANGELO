require 'test/unit'
require_relative 'exercise-03'

class TestCheckHash < Test::Unit::TestCase
    @@hashValues = {
        1 => 10,
        2 => 20,
        3 => 30,
        4 => 10,
        5 => 20,
        "6" => 30,
        7 => 10,
        8 => 20,
        "nine" => 30,
        543121 => 100
    }

    def test_make_exercise_object
        objExercise = Exercise.new(@@hashValues)
        assert objExercise.instance_of? Exercise
    end
    def test_is_key_integer
        objExercise = Exercise.new(@@hashValues)
        actualOutput = [1, 2, 3, 4, 5, 7, 8, 543121]
        assert_equal(actualOutput, objExercise.isKeyinteger)
        # actualOutput2 =[1, 3, 5, 7, 543121]
        # assert_equal(actualOutput2, objExercise.isKeyinteger)
    end
    def test_delete_even_keys
        @hashValues = {
            1 => 10,
            2 => 20,
            3 => 30,
            4 => 10,
            5 => 20,
            "6" => 30,
            7 => 10,
            8 => 20,
            "nine" => 30,
            543121 => 100
        }
        objExercise = Exercise.new(@hashValues)
        actualOutput = {1=>10, 3=>30, 5=>20, "6"=>30, 7=>10, "nine"=>30, 543121=>100}
        assert_equal(actualOutput, objExercise.deleteEvenkeys)        
    end
end
