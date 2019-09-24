function QuickSort(a, low, high)
  if low < high then
    partition = Partition(a, low, high)

    QuickSort(a, low, partition - 1)
    QuickSort(a, partition + 1, high)
  end

  return a
end

function Partition(a, low, high)
  pivot = a[high]

  i = low - 1

  for j = low, high - 1 do
    if (a[j] < pivot) then
      i = i + 1
      temp = a[i]
      a[i] = a[j]
      a[j] = temp
    end
  end

  temp = a[i + 1]
  a[i + 1] = a[high]
  a[high] = temp

  return i + 1
end

b = {1, 3, 2, 5, 4}

b = QuickSort(b, 1, table.getn(b))

for i = 1, table.getn(b) do
  print(b[i])
end
