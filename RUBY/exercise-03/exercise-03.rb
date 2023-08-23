class Exercise
  def initialize(hash_values)
    @hash_values = hash_values
  end

  def check_hash
    store_integer_hash = Hash.new
    @hash_values.each do |key, value|
      if key.is_a?(Integer)
        store_integer_hash[key] = value
      end
    end
    for key, value in store_integer_hash.to_a
      if key % 2 == 0
        @hash_values.delete(key)
      end
    end
    return [store_integer_hash, @hash_values]
  end
end
