require "test/unit"
require_relative "exercise-01"

class TestAverage < Test::Unit::TestCase
  def test_make_exercise_object
    object_exercise = Exercise.new()
    assert object_exercise.instance_of? Exercise
  end

  def test_check_average
    object_exercise = Exercise.new()
    assert_equal("002-15.00", object_exercise.average("002-10.00-20.00"))
    assert_equal("002-20.00", object_exercise.average("002-40.00-00.00"))
    assert_equal("003-50.00", object_exercise.average("003-10.00-90.00"))
  end

  def test_invalid_input
    object_exercise = Exercise.new()
    assert_equal("Invalid Input", object_exercise.average("002-10.00-10"))
    assert_equal("Invalid Input", object_exercise.average("002-10-10.00"))
    assert_equal("Invalid Input", object_exercise.average("00-10.00-10.00"))
    assert_equal("Invalid Input", object_exercise.average("one-10.00-10"))
  end
end
