require "base64"

class Exercise
  def write_content()
    content = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
    content_file_path = "RUBY/exercise-06/content.txt"
    begin
      File.open(content_file_path, "w") do |file|
        file.write(content)
      end
    rescue => exception
      return "Error in path #{exception}"
    end
    return content, content_file_path
  end

  def base64_encode
    read_content_file = File.read("RUBY/exercise-06/content.txt")
    string_to_encode = "the string that will be base encoded"
    encoded_string = Base64.encode64(string_to_encode).chomp
    @encoded_data = read_content_file.gsub(string_to_encode, encoded_string)
    return string_to_encode, encoded_string
  end

  def write_encoded_content(new_file_path)
    begin
      File.open(new_file_path, "w") do |file|
        file.write(@encoded_data)
      end
    rescue => exception
      return "Error in path #{exception}"
    end
    return @encoded_data
  end
end
