function BubbleSortAscending(a)
  if table.getn(a) < 2 then
    return a
  end

  for i = 1, table.getn(a) do
    for j = 1, table.getn(a) - 1 do
      if a[i] < a[j] then
        temp = a[j]
        a[j] = a[i]
        a[i] = temp
      end
    end
  end
  return a
end

function BubbleSortDescending(a)
  if table.getn(a) < 2 then
    return a
  end

  for i = 1, table.getn(a) do
    for j = 1, table.getn(a) - 1 do
      if a[i] > a[j] then
        temp = a[j]
        a[j] = a[i]
        a[i] = temp
      end
    end
  end
  return a
end

--Driver Code

b = {1, 3, 2, 5, 4, 2, 5, 4, 6, 165, 12}
c = {1, 3, 2, 5, 4}

b = BubbleSortAscending(b)
c = BubbleSortDescending(c)

for i = 1, table.getn(b) do
  io.write(b[i], "\t")
end

print("\n")

for i = 1, table.getn(c) do
  io.write(c[i], "\t")
end
