def fibs(n)
  array = []
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2
  for i in (0..n-1) do 
    if i == 0
      array.push(0)
    elsif i == 1
      array.push(1)
    else
      array.push((array[i-2] + array[i-1]))
    end
  end
  array
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(8)