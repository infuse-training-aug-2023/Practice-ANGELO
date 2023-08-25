require "test/unit"
require_relative "exercise-06"

class TestBase64Encode < Test::Unit::TestCase
  def test_make_exercise_object
    object_exercise = Exercise.new
    assert object_exercise.instance_of? Exercise
  end

  def test_write_content
    object_exercise = Exercise.new
    content, file_name = object_exercise.write_content()
    output = File.read(file_name)
    assert_equal(content, output)
  end

  def test_base64_encode
    object_exercise = Exercise.new
    object_exercise.base64_encode
    expected_output = File.read("RUBY/exercise-06/content.txt")
    actual_output = File.read("RUBY/exercise-06/Angelo.txt")
    assert_not_equal(actual_output, expected_output)
  end
end
