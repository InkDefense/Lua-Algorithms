function mergeSort(a)

  if (table.getn(a) > 1) then
    mid = math.floor(table.getn(a) / 2)
    local left = {}
    local right = {}

    for i = 1, mid do
      left[i] = a[i]
    end

    for i = 1, table.getn(a) - mid do
      right[i] = a[mid + i]
    end

    left = mergeSort(left)
    right = mergeSort(right)

    i = 1; j = 1; k = 1

    while i <= table.getn(left) and j <= table.getn(right) do
      if left[i] < right[j] then
        a[k] = left[i]
        i = i + 1
      else
        a[k] = right[j]
        j = j + 1
      end
      k = k + 1
    end

    while i <= table.getn(left) do
      a[k] = left[i]
      i = i + 1
      k = k + 1
    end

    while j <= table.getn(right) do
      a[k] = right[j]
      j = j + 1
      k = k + 1
    end
  end

  return a
end

-- Driver Code
a = {4, 2, 6, 1, 3, 5, 8, 7}

for i = 1, table.getn(a) do
  io.write(a[i], "\t")
end

a = mergeSort(a)

print("\n")

for i = 1, table.getn(a) do
  io.write(a[i], "\t")
end

print("\n")
