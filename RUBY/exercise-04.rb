def skip_sports(arr, num)
    updated_array = []

    arr.each_with_index do |value, index|
      updated_value = "#{index}:#{value}"
      updated_array << updated_value
    end
    return updated_array[num..]

end

arr = ["Cricket", "TT", "Football", "Hockey"]
print skip_sports(arr,2)
