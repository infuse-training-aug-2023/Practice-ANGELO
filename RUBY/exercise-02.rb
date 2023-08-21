arr = [9, 5, 1, 2, 3, 4, 0, -1]

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

puts element_at(arr,2)
print inclusive_range(arr,2,5)
puts ""
print non_inclusive_range(arr,2,5)
puts ""
puts start_and_length(arr,2,5)

