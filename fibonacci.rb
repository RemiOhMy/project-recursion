def fibs(num)
  i = 0
  array = []
  while i < num
    if i <= 1
      array.push(i)
    else
      array.push(array[i - 1] + array[i - 2])
    end
    i += 1
  end
  array
end

p fibs(8)

def fibRecursive(num)
  if num <= 2
    array = [0, 1]
    return array
  end

  array = fibRecursive(num - 1)
  array.push(array[-2] + array[-1])
end

p fibRecursive(8)