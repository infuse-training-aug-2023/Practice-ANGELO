class Exercise
    def initialize(hash_values)
        @hash_values = hash_values
    end
    def hash_values=(hash_values)
        @hash_values = hash_values
    end
    def hash_values
        return @hash_values
    end
    def is_key_integer
        store_op_keys = []
        hash_values.each_key do |key|
            if key.is_a?(Integer)
                store_op_keys << key
            end
        end
        return store_op_keys
    end
    def delete_even_keys
        for key, value in hash_values.to_a
            if key.is_a?(Integer) && key%2==0
                hash_values.delete(key)
            end
        end
        return hash_values
    end
end
