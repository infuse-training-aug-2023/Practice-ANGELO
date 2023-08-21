class Exercise
    def element_at(arr,index)
        return arr[index]
    end

    def inclusive_range(arr, start_pos, end_pos)
        return arr[start_pos..end_pos]
    end

    def non_inclusive_range(arr, start_pos, end_pos)
        return arr[start_pos..end_pos-1]
    end

    def start_and_length(arr, start_pos, lengths)
        return arr[start_pos..lengths].length
    end
end

# arr = [9, 5, 1, 2, 3, 4, 0, -1]
# obj = Exercise.new

# puts obj.element_at(arr,2)
# print obj.inclusive_range(arr,2,5)
# puts ""
# print obj.non_inclusive_range(arr,2,5)
# puts ""
# puts obj.start_and_length(arr,2,5)

# puts obj.element_at(arr,3)
# print obj.inclusive_range(arr,1,5)
# puts ""
# print obj.non_inclusive_range(arr,1,5)
# puts ""
# puts obj.start_and_length(arr,3,7)