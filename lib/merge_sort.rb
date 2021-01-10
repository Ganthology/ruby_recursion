def merge_sort(array)
  # base case
  return array if array.length < 2

  middle = array.length / 2
  # sort left
  left_half = merge_sort(array[0...middle])
  # sort right
  right_half = merge_sort(array[middle..array.length])
  # merge two halves(sort)

  i = 0
  j = 0
  k = 0
  while i < left_half.length && j < right_half.length
    if left_half[i] < right_half[j]
      array[k] = left_half[i]
      i += 1
    else
      array[k] = right_half[j]
      j += 1
    end
    k += 1
  end

  while i < left_half.length
    array[k] = left_half[i]
    i += 1
    k += 1
  end

  while j < right_half.length
    array[k] = right_half[j]
    j += 1
    k += 1
  end

  array
end

p merge_sort([3, 4, 2, 1])
