class Exercise
    def element_at(arr,index)
        return arr[index]
    end
    def inclusive_range(arr, start_pos, end_pos)
        return arr[start_pos..end_pos]
    end
    def non_inclusive_range(arr, start_pos, end_pos)
        return arr[start_pos...end_pos]
    end
    def start_and_length(arr, start_pos, lengths)
        return arr[start_pos..lengths].length
    end
end
