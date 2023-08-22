require 'test/unit'
require_relative 'exercise-03'

class TestCheckHash < Test::Unit::TestCase
    @@hash_values = {
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
        object_exercise = Exercise.new(@@hash_values)
        assert object_exercise.instance_of? Exercise
    end
    def test_is_key_integer
        object_exercise = Exercise.new(@@hash_values)
        actual_output = [1, 2, 3, 4, 5, 7, 8, 543121]
        assert_equal(actual_output, object_exercise.is_key_integer)
    end
    def test_delete_even_keys
        @hash_values = {
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
        object_exercise = Exercise.new(@hash_values)
        actual_output = {1=>10, 3=>30, 5=>20, "6"=>30, 7=>10, "nine"=>30, 543121=>100}
        assert_equal(actual_output, object_exercise.delete_even_keys)
    end
end
