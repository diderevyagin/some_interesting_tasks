
def binary_search(in_array, elem)
  res_idx = nil
  left_pos, right_pos = 0, (in_array.size - 1)

  while (right_pos >= left_pos) do
    mid_idx = left_pos + (right_pos - left_pos)/2

    case in_array[mid_idx] <=> elem
      when 0
        res_idx = mid_idx and break
      when -1
        left_pos = mid_idx + 1
      when 1
        right_pos = mid_idx - 1
    end

    if right_pos == left_pos
      res_idx = right_pos if in_array[right_pos] == elem
      break
    end
  end

  res_idx
end