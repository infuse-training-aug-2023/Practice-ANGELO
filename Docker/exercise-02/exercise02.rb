require "faker"
require "json"

fake_data = {
  "name" => Faker::Name.name,
  "email" => Faker::Internet.email,
  "address" => Faker::Address.full_address,
  "phone" => Faker::PhoneNumber.phone_number,
}

if ENV["EXEC"]
  begin
    output_file_path = ARGV[0]
    File.open(output_file_path, "w") do |file|
      file.write(JSON.generate(fake_data))
      file.close()
    end
    puts "Output stored in file: #{output_file_path}"
  rescue => exception
    puts "Error: #{exception}"
  end
end
