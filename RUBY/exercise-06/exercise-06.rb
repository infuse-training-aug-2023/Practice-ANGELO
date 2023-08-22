require 'base64'

class Exercise
  def base64_encode
    content = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
    File.open("RUBY/exercise-06/content.txt", "w") do |file|
      file.write(content)
    end
    read_content_file = File.read("RUBY/exercise-06/content.txt")
    encoding_string = "the string that will be base encoded"
    encoded_string = Base64.encode64(encoding_string).chomp
    encoded_data = read_content_file.gsub(encoding_string, encoded_string)
    new_file = File.open("RUBY/exercise-06/Angelo.txt", "w")
    new_file.write(encoded_data)
    new_file.close()
  end
end
