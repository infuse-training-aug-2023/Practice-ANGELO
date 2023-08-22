require 'json'
require 'time'

class Exercise
    def json_task
        json_file = File.read('RUBY/exercise-05/test.json')
        json_data = JSON.parse(json_file)
        first_name, last_name = json_data['name'].split(' ')
        updated_name = Hash.new
        updated_name.store("First Name", first_name)
        updated_name.store("Last Name", last_name)
        json_data.delete("name")
        updated_data = updated_name.merge(json_data)
        timestamp = Time.now.utc.to_i
        output_file_name = "Angelo_#{timestamp}.json"
        new_file_path = "RUBY/exercise-05/#{output_file_name}"
        json_data = JSON.generate(updated_data)
        file_open = File.open(new_file_path,"w")
        file_open.write(json_data)
        file_open.close
        return output_file_name
    end
end
