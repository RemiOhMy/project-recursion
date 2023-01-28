# frozen_string_literal: true

def merge_sort(array)
  return array if array.length < 2

  n = array.length
  first = array[0..(n / 2 - 1)]
  second = array[(n / 2)..n]
  merge(merge_sort(first), merge_sort(second), array)
end

def merge(first, second, array)
  pointer_f = pointer_s = pointer_a = 0

  while pointer_f < first.length || pointer_s < second.length
    if first[pointer_f].nil?
      array[pointer_a] = second[pointer_s]
      pointer_s += 1
    elsif second[pointer_s].nil?
      array[pointer_a] = first[pointer_f]
      pointer_f += 1
    elsif first[pointer_f] < second[pointer_s]
      array[pointer_a] = first[pointer_f]
      pointer_f += 1
    else
      array[pointer_a] = second[pointer_s]
      pointer_s += 1
    end
    pointer_a += 1
  end

  array
end

p mergeSort([3, 4, 1, 2, 5, 7, 6, 0, 10_001, 10_000])