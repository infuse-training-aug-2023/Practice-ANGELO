hashValues ={
    1 => 10,
    2 => 20,
    3 => 30,
    4 => 10,
    5 => 20,
    "6" => 30,
    7 => 10,
    8 => 20,
    "nine" => 30
}
for key, value in hashValues.to_a
    if key.is_a?(Integer)
        puts "#{key}: #{value}"
        end
  end
puts ""
puts "After deleting key with even-values from hash "

for key, value in hashValues.to_a
if key.is_a?(Integer) && key%2==0 
    hashValues.delete(key)
    end
end

puts hashValues
# hashValues.each do |key, value|
#     if key.is_a?(Integer)
#         puts "#{key} : #{value}"
#         end
# end
