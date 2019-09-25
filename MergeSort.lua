-- function is currently incomplete. Scheduled to be completed 9/25

function mergeSort(a)
  if (table.getn(a) > 1) then
    mid = math.floor(table.getn(a) / 2)
    left = {}
    right = {}

    for i = 1, math.floor(table.getn(a) / 2) do
      left[i] = b[i]
      print(left[i], i)
    end

    print("\n")

    for i = 1, math.ceil(table.getn(a) / 2) do
      right[i] = b[math.floor(table.getn(a) / 2) + i]
      print(right[i], i)
    end
  end

  return a
end

b = {1, 2, 3, 4, 5, 6, 7, 8}

b = mergeSort(b)
