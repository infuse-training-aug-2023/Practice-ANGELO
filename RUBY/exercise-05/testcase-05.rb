require 'test/unit'
require_relative 'exercise-05'

class TestJsonTask < Test::Unit::TestCase
    def test_make_exercise_object
        object_exercise = Exercise.new
        assert object_exercise.instance_of? Exercise
    end
    def test_json_task
        object_exercise = Exercise.new
        actual_output_json_file = File.read('RUBY/exercise-05/actual_output.json')
        actual_output = JSON.parse(actual_output_json_file)
        expected_output_file_name = "RUBY/exercise-05/#{object_exercise.json_task}"
        expected_output_json_file = File.read(expected_output_file_name)
        expected_output = JSON.parse(expected_output_json_file)
        assert_equal(actual_output, expected_output)
    end
end
