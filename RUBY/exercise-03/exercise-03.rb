class Exercise
    def initialize(hashValues)
        @hashValues = hashValues
    end
    def hashValues=(hashValues)
        @hashValues = hashValues
    end
    def hashValues
        return @hashValues
    end
    
    def isKeyinteger
        storeOutputkeys = []
        hashValues.each_key do |key|
            if key.is_a?(Integer)
                storeOutputkeys << key
            end
        end
        return storeOutputkeys
    end

    def deleteEvenkeys
        for key, value in hashValues.to_a
            if key.is_a?(Integer) && key%2==0 
                hashValues.delete(key)
            end
        end
        return hashValues
    end
end

# hashValues = {
#     1 => 10,
#     2 => 20,
#     3 => 30,
#     4 => 10,
#     5 => 20,
#     "6" => 30,
#     7 => 10,
#     8 => 20,
#     "nine" => 30,
#     543121 => 100
# }

# obj = Exercise.new(hashValues)
# print obj.isKeyinteger()
# puts
# puts obj.deleteEvenkeys()