require "test/unit"
require_relative "exercise-03"

class TestCheckHash < Test::Unit::TestCase
  @@hash_values = { 1 => 10, 2 => 20, 3 => 30, 4 => 10, 5 => 20, "6" => 30, 7 => 10, 8 => 20, "nine" => 30, 543121 => 100 }

  def test_make_exercise_object
    object_exercise = Exercise.new(@@hash_values)
    assert object_exercise.instance_of? Exercise
  end

  def test_check_hash
    object_exercise = Exercise.new(@@hash_values)
    actual_output = [{ 1 => 10, 2 => 20, 3 => 30, 4 => 10, 5 => 20, 7 => 10, 8 => 20, 543121 => 100 },
                     { 1 => 10, 3 => 30, 5 => 20, "6" => 30, 7 => 10, "nine" => 30, 543121 => 100 }]
    assert_equal(actual_output, object_exercise.check_hash)
  end
end
