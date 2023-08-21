hashValues = {
    1 => 10,
    2 => 20,
    3 => 30,
    4 => 10,
    5 => 20,
    "6" => 30,
    7 => 10,
    8 => 20,
    "nine" => 30,
    543121 => 100
}

obj = Exercise.new(hashValues)
print obj.isKeyinteger()
puts
puts obj.deleteEvenkeys()