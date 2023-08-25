require "json"
require "time"

class Exercise
  def change_json_data
    json_file = File.read("RUBY/exercise-05/test.json")
    json_data = JSON.parse(json_file)

    first_name, last_name = json_data["name"].split(" ")
    json_data.delete("name")
    json_data["First Name"] = first_name
    json_data["Last Name"] = last_name

    timestamp = Time.now.utc.strftime("%Y%m%d%H%M%S")
    output_file_name = "RUBY/exercise-05/Angelo_#{timestamp}.json"
    File.open(output_file_name, "w") do |file|
      file.write(JSON.generate(json_data))
    end
    return output_file_name
  end
end
