# frozen_string_literal: true

def fibs(num)
  array = []
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num == 2

  (0..num - 1).each do |i|
    if i.zero?
      array.push(0)
    elsif i == 1
      array.push(1)
    else
      array.push((array[i - 2] + array[i - 1]))
    end
  end
  array
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(8)

def fibs_rec(num)
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num == 2

  seq = fibs_rec(num - 1)
  seq.push(seq[-2] + seq[-1])
end

p fibs_rec(8)
