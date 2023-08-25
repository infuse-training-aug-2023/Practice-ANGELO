class Exercise
  def element_at(arr, index)
    if index <= arr.length
      return arr[index]
    else
      return "Array index is out of bound"
    end
  end

  def inclusive_range(arr, start_pos, end_pos)
    if (start_pos < arr.length) && (end_pos <= arr.length) && (start_pos < end_pos)
      return arr[start_pos..end_pos]
    else
      return "Array index is out of bound"
    end
  end

  def non_inclusive_range(arr, start_pos, end_pos)
    if (start_pos < arr.length) && (end_pos <= arr.length) && (start_pos < end_pos)
      return arr[start_pos...end_pos]
    else
      return "Array index is out of bound"
    end
  end

  def start_and_length(arr, start_pos, lengths)
    if start_pos <= arr.length
      return arr[start_pos..lengths].length
    else
      return "Array index is out of bound"
    end
  end
end
