require "test/unit"
require_relative "exercise-05"

class TestJsonTask < Test::Unit::TestCase
  def test_make_exercise_object
    object_exercise = Exercise.new
    assert object_exercise.instance_of? Exercise
  end

  def test_change_json_data
    object_exercise = Exercise.new
    actual_output = JSON.parse(File.read("RUBY/exercise-05/actual_output.json"))
    expected_output = JSON.parse(File.read(object_exercise.change_json_data))
    assert_equal(actual_output, expected_output)
  end
end
