require "test/unit"
require_relative "exercise-02"

class TestCheckArray < Test::Unit::TestCase
  $arr = [9, 5, 1, 2, 3, 4, 0, -1]

  def test_make_exercise_object
    object_exercise = Exercise.new()
    assert object_exercise.instance_of? Exercise
  end

  def test_element_at
    object_exercise = Exercise.new()
    assert_equal(1, object_exercise.element_at($arr, 2))
    assert_equal(2, object_exercise.element_at($arr, 3))
    assert_equal("Array index is out of bound", object_exercise.element_at($arr, 20))
  end

  def test_inclusive_range
    object_exercise = Exercise.new()
    assert_equal([1, 2, 3, 4], object_exercise.inclusive_range($arr, 2, 5))
    assert_equal([5, 1, 2, 3, 4], object_exercise.inclusive_range($arr, 1, 5))
    assert_equal("Array index is out of bound", object_exercise.start_and_length($arr, 20, 7))
  end

  def test_non_inclusive_range
    object_exercise = Exercise.new()
    assert_equal([1, 2, 3], object_exercise.non_inclusive_range($arr, 2, 5))
    assert_equal([5, 1, 2, 3], object_exercise.non_inclusive_range($arr, 1, 5))
    assert_equal("Array index is out of bound", object_exercise.start_and_length($arr, 20, 7))
  end

  def test_start_and_length
    object_exercise = Exercise.new()
    assert_equal(4, object_exercise.start_and_length($arr, 2, 5))
    assert_equal(5, object_exercise.start_and_length($arr, 3, 7))
    assert_equal("Array index is out of bound", object_exercise.start_and_length($arr, 20, 7))
  end
end
